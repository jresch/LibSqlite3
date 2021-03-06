set -e
source ${HORIZON_BUILD_TOOL_ROOT}/shell/function/public/project_builder.sh
export PROJECT_ROOT=$(cd ${CMAKE_LIST_ROOT}/../; pwd)
if [[ "${PROJECT_PLATFORM}" == "android" ]];
then
	export PROJECT_IDE_ROOT=${PROJECT_ROOT}/intermediate/project/${PROJECT_PLATFORM}/${PROJECT_BUILD_TARGET}/${PROJECT_CONFIG}
	export CMAKE_ARCHIVE_OUTPUT_DIRECTORY=${PROJECT_ROOT}/libs/${PROJECT_PLATFORM}/${PROJECT_BUILD_TARGET}/${PROJECT_CONFIG}
else
	export PROJECT_IDE_ROOT=${PROJECT_ROOT}/intermediate/project/${PROJECT_PLATFORM}/${PROJECT_BUILD_TARGET}/
	export CMAKE_ARCHIVE_OUTPUT_DIRECTORY=${PROJECT_ROOT}/libs/${PROJECT_PLATFORM}/${PROJECT_BUILD_TARGET}/
fi
