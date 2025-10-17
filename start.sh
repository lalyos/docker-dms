#!/bin/bash

cat > /var/www/html/index.html <<EOF
<html lang="en">
<head>
    <title>Document</title>
</head>
<body bgcolor='${COLOR:-yellow}'>
    <h1>${TITLE:-Welcome}</h1>
    ${BODY:-Please use TITLE/BODY/COLOR env vars}
</body>
</html>
EOF

nginx -g 'daemon off;'