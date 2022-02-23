# natas level0
natas is CTF with web application.

## using credential is below.(it is default)
- User:natas0
- Pass:natas0

check web site by lynx.
`lynx http://natas0:natas0@natas0.natas.labs.overthewire.org`

I see following message in this page.(only this message exist in this).
You can find the password for the next level on this page.

I check source of this page.
`lynx -source http://natas0:natas0@natas0.natas.labs.overthewire.org`

***
~~~
<html>
<head>
<!-- This stuff in the header has nothing to do with the level -->
<link rel="stylesheet" type="text/css" href="http://natas.labs.overthewire.org/css/level.css">
<link rel="stylesheet" href="http://natas.labs.overthewire.org/css/jquery-ui.css" />
<link rel="stylesheet" href="http://natas.labs.overthewire.org/css/wechall.css" />
<script src="http://natas.labs.overthewire.org/js/jquery-1.9.1.js"></script>
<script src="http://natas.labs.overthewire.org/js/jquery-ui.js"></script>
<script src=http://natas.labs.overthewire.org/js/wechall-data.js></script><script src="http://natas.labs.overthewire.org/js/wechall.js"></script>
<script>var wechallinfo = { "level": "natas0", "pass": "natas0" };</script></head>
<body>
<h1>natas0</h1>
<div id="content">
You can find the password for the next level on this page.

<!--The password for natas1 is gtVrDuiDfck831PqWsLEZy5gyDz1clto -->
</div>
</body>
</html>
~~~

I found password!.
Password is gtVrDuiDfck831PqWsLEZy5gyDz1clto.


