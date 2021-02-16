# #!/bin/sh

# set -x

# # 获取当前目录
# SOURCE_DIR=`pwd`   
# # 编译后项目的存储路径
# BUILD_DIR=${BUILD_DIR:-../build}
# #项目的编译类型
# BUILD_TYPE=${BUILD_TYPE:-Debug}

# # 创建存放编译后的项目的目录，build/编译类型
# mkdir -p $BUILD_DIR/$BUILD_TYPE \
# # 进入到目录下
#     && cd $BUILD_DIR/$BUILD_TYPE \
# # 执行build.sh文件同级目录下的CMakeLists.txt
#     && cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE $SOURCE_DIR \
# # 执行cmake生成的MakeFile
#     && make $*


#!/bin/sh

set -x

SOURCE_DIR=`pwd`
BUILD_DIR=${BUILD_DIR:-./build}
BUILD_TYPE=${BUILD_TYPE:-Debug}

mkdir -p $BUILD_DIR/$BUILD_TYPE \
    && cd $BUILD_DIR/$BUILD_TYPE \
    && cmake -DCMAKE_BUILD_TYPE=$BUILD_TYPE $SOURCE_DIR \
    && make $*