#ifndef Param_H
#define Param_H
#include "ros/ros.h"
#include <ros/callback_queue.h>
#include <iostream>
#include <string>
#include <ros/package.h>
#include <fstream>

#include <core_api/ParamSave.h>
#include <core_api/ParamGet.h>
#include <core_api/ParamGetAll.h>
#include <core_api/ParamSet.h>
#include <core_api/ParamCreate.h>
#include <core_api/ParamReset.h>
#include <core_api/ParamDelete.h>
#include <core_api/ParamLoad.h>
#include <core_api/ParamInfo.h>

class Param
{

private:
    ros::NodeHandlePtr nh_ptr_;
    ros::AsyncSpinner *spinner_ptr_;
    std::string global_namespace;

public:
    Param(std::string username);
    Param();
    ~Param();
    bool param_set(std::string param_id, std::string param_value);
    bool param_get(std::string param_id, std::string &param_value);
    bool param_get_all(std::vector<core_api::ParamInfo> &param_list, bool fresh_pull=false);
    bool param_save();
    bool param_load();
    bool param_create(std::string param_id, std::string param_value);
    bool param_delete(std::string param_id);
    bool param_reset();
};

#endif // Param_H
