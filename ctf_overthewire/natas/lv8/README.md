# natas level8
natas is CTF with web application.

## using credential is below.
- User:natas8
- Pass:DBfUBfqQG69KvJvJ1iAbMoIpwSNQ9bWe

## using tools.
- shell(curl, base64, etc)
- lynx
check web site by lynx.
`lynx http://natas8:DBfUBfqQG69KvJvJ1iAbMoIpwSNQ9bWe@natas8.natas.labs.overthewire.org`

followings is message of this page.
~~~
input secret:
~~~

`curl http://natas8.natas.labs.overthewire.org/index-source.html -u natas8:DBfUBfqQG69KvJvJ1iAbMoIpwSNQ9bWe -o websource.html`

I check source code and this page use encodedSecret.
~~~
   $encodedSecret = "3d3d516343746d4d6d6c315669563362";
   function encodeSecret($secret) {
       return bin2hex(strrev(base64_encode($secret)));
   }
~~~

I try to decode secret. my php script is test.php.
And decoded secret is -> `oubWYf2kBq`

I got password after enter this secret.
natas9 is W0mMhUcRRnG8dcghE4qvk3JA9lGt8nDl




