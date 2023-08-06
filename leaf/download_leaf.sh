xcframework="leaf.xcframework.zip"
echo "Downloading leaf xcframework:"
curl -# -L -o $xcframework 'https://github.com/eycorsican/leaf/releases/download/v0.9.3/leaf.xcframework.zip'
unzip $xcframework