FROM nginx:1.24

RUN echo ' <!DOCTYPE html> \n\
<html> \n\
<head> \n\
<meta charset="UTF-8"> \n\
<title>Hello World!</title> \n\
<style> \n\
  * {font-family: sans-serif;} \n\
</style> \n\
</head> \n\
<body><p>Hello World from content 1</p></body> \n\
</html>' >> content.html

RUN echo ' <!DOCTYPE html> \n\
<html> \n\
<head> \n\
<meta charset="UTF-8"> \n\
<title>Hello World!</title> \n\
<style> \n\
  * {font-family: sans-serif;} \n\
</style> \n\
</head> \n\
<body><p>Hello World from content 2</p></body> \n\
</html>' >> content2.html

RUN echo ' <!DOCTYPE html> \n\
<html> \n\
<head> \n\
<meta charset="UTF-8"> \n\
<title>Hello World!</title> \n\
<style> \n\
  * {font-family: sans-serif;} \n\
</style> \n\
</head> \n\
<body><p>Hello World from content 3</p></body> \n\
</html>' >> content3.html

RUN mv content.html /usr/share/nginx/html/content.html
RUN mv content2.html /usr/share/nginx/html/content2.html
RUN mv content3.html /usr/share/nginx/html/content3.html