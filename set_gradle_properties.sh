keytool -genkeypair -v -storetype PKCS12 -keystore my-upload-key.keystore -alias my-key-alias -keyalg RSA -keysize 2048 -validity 10000 -storepass $1 -keypass $1 -noprompt \
-dname "CN=unknown, OU=unknown, O=unknown, L=unknown, ST=unknown, C=BD"

mv my-upload-key.keystore ./android/
echo MYAPP_UPLOAD_STORE_FILE=my-upload-key.keystore>> android/gradle.properties
echo MYAPP_UPLOAD_KEY_ALIAS=my-key-alias>> android/gradle.properties
echo MYAPP_UPLOAD_STORE_PASSWORD=$1>> android/gradle.properties
echo MYAPP_UPLOAD_KEY_PASSWORD=$1>> android/gradle.properties
