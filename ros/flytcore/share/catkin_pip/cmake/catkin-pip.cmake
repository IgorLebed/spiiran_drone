message(STATUS "Loading catkin-pip.cmake from ${CMAKE_CURRENT_LIST_DIR}... ")

if ( CMAKE_BACKWARDS_COMPATIBILITY LESS 2.8 )
	message ( FATAL_ERROR " CMAKE MINIMUM BACKWARD COMPATIBILITY REQUIRED : 2.8 !" )
endif( CMAKE_BACKWARDS_COMPATIBILITY LESS 2.8 )

# Setting required policies
# required to be able to do "if (True)"
# FOREACH(policy CMP0011 CMP0012 CMP0013 CMP0014)
#     IF(POLICY ${policy})
#      CMAKE_POLICY(SET ${policy} NEW)
#     ENDIF()
# ENDFOREACH()

# Enforcing one time include https://cmake.org/Wiki/CMake_Performance_Tips#Use_an_include_guard
if(catkin_pip_main_included)
  return()
endif(catkin_pip_main_included)
set(catkin_pip_main_included true)

# protecting against missing cmake file dependency
include ( "${CMAKE_CURRENT_LIST_DIR}/catkin-pip-requirements.cmake" RESULT_VARIABLE CATKIN_PIP_REQUIREMENTS_FOUND )
IF ( NOT CATKIN_PIP_REQUIREMENTS_FOUND )
    message ( FATAL_ERROR "${CMAKE_CURRENT_LIST_DIR}/catkin-pip-requirements.cmake Not Found !!!" )
ENDIF ( NOT CATKIN_PIP_REQUIREMENTS_FOUND )

# protecting against missing cmake file dependency
include ( "${CMAKE_CURRENT_LIST_DIR}/catkin-pip-setup.cmake" RESULT_VARIABLE CATKIN_PIP_SETUP_FOUND )
IF ( NOT CATKIN_PIP_SETUP_FOUND )
    message ( FATAL_ERROR "${CMAKE_CURRENT_LIST_DIR}/catkin-pip-setup.cmake Not Found !!!" )
ENDIF ( NOT CATKIN_PIP_SETUP_FOUND )

# Setting our paths to package env-hooks provided by catkin-pip
if ( NOT CATKIN_PIP_ENV_HOOKS_PATH )
    # templates should be found relative to our current path
    set (CATKIN_PIP_ENV_HOOKS_PATH ${CMAKE_CURRENT_LIST_DIR}/env-hooks)
endif()

# We want the catkin environment to be used for both devel and install workspace
# to use latest versions python tools in both.
set(CATKIN_PIP_ENV ${CMAKE_BINARY_DIR}/catkin_pip_env CACHE PATH "The path containing the python environment for catkin_pip dependencies" )
set(CATKIN_PIP_NO_DEPS True CACHE BOOL "Whether we want to retrieve python dependencies and requirements for packages" )
set(CATKIN_PIP_PYTHON_INSTALL_DIR lib/python2.7/site-packages)
set(CATKIN_PYTHON_INSTALL_DIR lib/python2.7/dist-packages)

# These are set on include time by catkin-pip and point to catkin-pip folders
if ( NOT CATKIN_PIP_SCRIPTS_PATH )
    # templates should found relative to our current path
    set (CATKIN_PIP_SCRIPTS_PATH ${CMAKE_CURRENT_LIST_DIR}/scripts CACHE PATH "scripts path")
endif()

# Since we need the envhook as soon as a package is using catkin-pip from source.
# TODO : investigate, maybe we can simplify this by using CATKIN_ENV
catkin_add_env_hooks(42.site_packages SHELLS sh DIRECTORY ${CATKIN_PIP_ENV_HOOKS_PATH} SKIP_INSTALL)
# TODO : validate if we need both ?
catkin_add_env_hooks(42.site_packages SHELLS bash DIRECTORY ${CATKIN_PIP_ENV_HOOKS_PATH} SKIP_INSTALL)
# SKIP_INSTALL because we definitely do not want it ending up in all deb packages built with catkin_pip.
# If we need paths in install space, they should somehow be stored in generated scripts (make or others)
# TODO : cmake should include this file only once per workspace, so the env hook is not recreated for every package that uses catkin_pip if they are in same workspace...


# Setting up catkin prefix in catkin_pip_env
catkin_pip_setup_prefix(${CATKIN_PIP_ENV})

# Setting up python site-packages directory in devel workspace
# If needed we create the directory (to avoid later errors)
# It is required on isolated builds
file(MAKE_DIRECTORY ${CATKIN_DEVEL_PREFIX}/lib/python2.7/site-packages)

#
# Install Space should have same behavior as package build
# We want to check dependencies are all satisfied, without relying on pip requirements.
# But we want to use latest version python libraries (especially setuptools)
#