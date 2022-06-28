IMG_URI=$1;
mkdir assets;
curl $IMG_URI> assets/icon.png;
