#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

if [[ ! -d ${HOME}/Tess ]]; then
  echo "Creating ${HOME}/Tess directory"
  mkdir ${HOME}/Tess
fi
if [[ ! -d ${HOME}/Tess/bin ]]; then
  echo "Creating ${HOME}/Tess/bin directory"
  mkdir ${HOME}/Tess/bin
fi

# Adding ${HOME}/Tess/bin into PATH
PATH=${PATH}:${HOME}/Tess/bin

# Install tools that we are going to need
command -v tess >/dev/null 2>&1 || {
  echo "Downloading tess cli into ${HOME}/Tess/bin"
  if [ "$(uname)" == "Darwin" ]; then
    curl -fsSL "https://dl.tess.io/ci/bin/tess?version=latest&platform=darwin-amd64" \
    -o ${HOME}/Tess/bin/tess
    echo "Running codesign on tess cli"
    codesign --force -s - ${HOME}/Tess/bin/tess
    codesign -dv -r- ${HOME}/Tess/bin/tess
  elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
     curl -fsSL "https://dl.tess.io/ci/bin/tess?version=latest&platform=linux-amd64" \
    -o ${HOME}/Tess/bin/tess
  fi
  chmod +x ${HOME}/Tess/bin/tess
}
command -v brew >/dev/null 2>&1 || {
  echo "Installing brew"
  /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
}
command -v jq >/dev/null 2>&1 || {
  echo "Installing jq"
  brew install jq
}

# Download quick start scripts into ${HOME}/Tess
echo "Pulling quick start scripts into ${HOME}/Tess"
curl -fsSL "https://dl.tess.io/git/tessellate/create-app.sh" \
  -o ${HOME}/Tess/create-app.sh
chmod +x ${HOME}/Tess/create-app.sh
curl -fsSL "https://dl.tess.io/git/tessellate/README.md" |
  tail -n +15 >${HOME}/Tess/README.md

# To start working on the quick start scripts, we need to login to fcp-dev and
# cluster 130
echo "Logging into fcp-dev"
tess login -c fcp-dev -u ${USER}
echo "Logging into cluster 130"
tess login -c 130 -u ${USER}

# Check whether you have an account available
tess --context=fcp-dev get account ${USER} >/dev/null 2>&1 || {
  echo "Account ${USER} is not found, please go to https://cloud.ebay.com/accounts to create one"
  exit 1
}

echo ""
cat ${HOME}/Tess/README.md
