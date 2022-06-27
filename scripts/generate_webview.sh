NAME=$1
URI=$2

script_dir=$(dirname "$0")

$script_dir/generate_app.sh $NAME > app.json
$script_dir/generate_uri.sh $URI > uri.js
