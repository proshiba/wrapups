# natas level3
natas is CTF with web application.

## using credential is below.
- User:natas3
- Pass:sJIJNW6ucpu6HPZ1ZAchaDtwd7oGrD14

check web site by lynx.
`lynx http://natas3:sJIJNW6ucpu6HPZ1ZAchaDtwd7oGrD14@natas3.natas.labs.overthewire.org`

only following message is exist.
There is nothing on this page

And I check source code of this, we found following comment.
~~~
<!-- No more information leaks!! Not even Google will find it this time... -->
~~~

I think this is mean of robots.txt, I got access it and found URL of `Disallow: /s3cr3t/`
I found users.txt in this url and this file has password of natas4!

natas4:Z9tkRkWmpt9Qr7XrR5jWRkgOU901swEZ


