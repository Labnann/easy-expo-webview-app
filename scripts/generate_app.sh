NAME=$1

cat <<EOF
{
  "expo": {
    "name": "$NAME",
    "slug": "$NAME",
    "version": "1.0.0",
    "icon": "./assets/icon.png",
    "assetBundlePatterns": [
      "**/*"
    ]
  },
  "name": "$NAME"
}
EOF
