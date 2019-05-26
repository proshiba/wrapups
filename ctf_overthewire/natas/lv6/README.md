# natas level6
natas is CTF with web application.

## using credential is below.
- User:natas6
- Pass:aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1

## using tools.
- shell(curl, base64, etc)
- lynx
check web site by lynx.
`lynx http://natas6:aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1@natas6.natas.labs.overthewire.org`

followings is message of this page.
~~~
input secret:(textarea)

And view source(has link)
~~~

I enter random string in secret and return message is "wrong secret".
I check view source and we found followings. I checked url of `includes/secret.inc`
~~~
   <div id="content">
   <?
   include "includes/secret.inc";
       if(array_key_exists("submit", $_POST)) {
           if($secret == $_POST['secret']) {
~~~

I found secret in this url. and I got password after we enter this secret.
~~~
curl http://natas6.natas.labs.overthewire.org/includes/secret.inc -u natas6:aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1 --verbose
<?
$secret = "FOEIUWGHFEEUHOFUOIU";
?>
~~~




