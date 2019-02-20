#!/bin/bash
set -e
set -o pipefail
cd ../images
echo '<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no">
  <meta name="format-detection" content="telephone=no">
  <meta name="msapplication-tap-highlight" content="no">
</head>
<body>
<link rel="stylesheet" type="text/css" href="images.css">
' > ../build/images.html
ls | awk '{print "<p><span>"$1"</span><img src=\"images/"$1"\"></p>"}' >> ../build/images.html
echo '</body>
</html>' >> ../build/images.html
