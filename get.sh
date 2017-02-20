#!/bin/bash

pushd . 
mkdir -p host/installers
cd host/installers
wget $ACT_URL
chmod 755 $ACT_BIN
popd
