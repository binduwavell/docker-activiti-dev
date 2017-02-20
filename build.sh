#!/bin/bash

# render a template configuration file
# expand variables + preserve formatting
render_template() {
      eval "echo \"$(cat $1)\""
}

mkdir "docker-${ACT_VERSION}"
render_template Dockerfile.template > "docker-${ACT_VERSION}/Dockerfile"

docker build --tag "activiti:${ACT_VERSION}" "docker-${ACT_VERSION}"

rm -rf "docker-${ACT_VERSION}"
