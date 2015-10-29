#!/bin/bash

build_repository="Release"
build_type="Release"

if [ "$1" = "Debug" ] || [ "$1" = "Release" ]
then
        echo test
        build_repository=$1
	build_type=$1
fi

if [ ! -d $build_repository ]
then
	mkdir $build_repository
fi

cd $build_repository

cmake .. -G"Unix Makefiles" -DCMAKE_BUILD_TYPE=$build_type
