#!/bin/bash

echo '<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Static</title>
</head>
<body>
' > index.html

while IFS= read -d '' -r f ; do
  printf '<a href="%s">%s</a>\n' "$f" "$f" >> index.html
done < <(find ./*/ -type f ! -path './.git/*' -print0)


printf '\n</body>\n</html>\n' >> index.html
