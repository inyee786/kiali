echo pwd
KIALI_PATH=pwd
echo $KIALI_PATH
echo $GOPATH
echo $GO_BUILD_ENVVARS
# build kiali-ui
export NODE_OPTIONS=--max_old_space_size=4096
cd ../
git clone https://github.com/inyee786/kiali-ui.git
cd kiali-ui/
NODE_OPTIONS=--max_old_space_size=4096
git checkout mayadata-io
npm install
yarn build
ls -ltr
# docker build -t mayadataio/kiali-ui:${COMMIT} .
# cd ../kiali