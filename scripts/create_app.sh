NAME=$1;
URI=$2;
IMAGE=$3;

rm node_modules -r;
rm .expo -r;


./scripts/generate_webview.sh $NAME $URI 
./scripts/get_app_image.sh $IMAGE

npm install

expo ba


