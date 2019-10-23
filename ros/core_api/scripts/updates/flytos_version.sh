#!/bin/bash

dpkg -s flytcore-ce | grep Version | sed -e 's/Version: //g' # For FlytOS-CE
#dpkg -s flytsim-ce | grep Version | sed -e 's/Version: //g' # For FlytSIM-CE
#dpkg -s flytcore-pe | grep Version | sed -e 's/Version: //g' # For FlytOS-PE
#dpkg -s flytsim-pe | grep Version | sed -e 's/Version: //g' # For FlytSIM-PE
