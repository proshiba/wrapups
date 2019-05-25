# natas level1
natas is CTF with web application.

## using credential is below.(it is default)
- User:natas1
- Pass:gtVrDuiDfck831PqWsLEZy5gyDz1clto

check web site by lynx.
`lynx http://natas1:gtVrDuiDfck831PqWsLEZy5gyDz1clto@natas1.natas.labs.overthewire.org`

I see following message in this page.(only this message exist in this).
You can find the password for the next level on this page, but rightclicking has been blocked!

I check source of this page.
`lynx -source http://natas1:gtVrDuiDfck831PqWsLEZy5gyDz1clto@natas1.natas.labs.overthewire.org`

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
<script>var wechallinfo = { "level": "natas1", "pass": "gtVrDuiDfck831PqWsLEZy5gyDz1clto" };</script></head>
<body oncontextmenu="javascript:alert('right clicking has been blocked!');return false;">
<h1>natas1</h1>
<div id="content">
You can find the password for the
next level on this page, but rightclicking has been blocked!

<!--The password for natas2 is ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi -->
</div>
</body>
</html>
~~~

I found password! it is ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi.
