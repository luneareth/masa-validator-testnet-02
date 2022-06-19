#!/bin/bash


MASSA_VERSION="v1.0"
MASSA_TAGS="v1.03"
MASSA_NAME="massa-node"
MASSA="${MASSA_NAME}-${MASSA_VERSION}"
SOURCE_MASSA="${HOME}/Source"


if ! [ -d ${HOME}/MASSA ]
then
   mkdir -p ${HOME}/MASSA
fi

cd ${HOME}/MASSA

if ! [ -f ${HOME}/MASSA/"${MASSA}-${MASSA_TAGS}".tar.gz ]
then
   wget -c https://github.com/masa-finance/masa-node-v1.0/archive/refs/tags/${MASSA_TAGS}.tar.gz -O "${MASSA}-${MASSA_TAGS}".tar.gz
   _name_packages=`tar tf "${MASSA}-${MASSA_TAGS}".tar.gz | head -n1 | tr -d "/"`
   tar xvf "${MASSA}-${MASSA_TAGS}".tar.gz 
   mv ${_name_packages} ${MASSA}
   ln -sf ${HOME}/MASSA/${MASSA} ${HOME}/MASSA/${MASSA_NAME}
fi

cd ${HOME}/MASSA/${MASSA_NAME}
cp -rf ${SOURCE_MASSA}/docker/docker-compose.yml  ${HOME}/MASSA/${MASSA_NAME}/
cp -rf ${SOURCE_MASSA}/docker/docker-compose-ui.yml  ${HOME}/MASSA/${MASSA_NAME}/ui/
cp -rf ${SOURCE_MASSA}/docker/re-run.sh  ${HOME}/MASSA/${MASSA_NAME}/
mkdir -p ${HOME}/MASSA/${MASSA_NAME}/massa-storage
bash -x re-run.sh
