# natas level2
natas is CTF with web application.

## using credential is below.
- User:natas2
- Pass:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi

check web site by lynx.
`lynx http://natas2:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi@natas2.natas.labs.overthewire.org`

I see following message in this page.(only this message exist in this).
You can find the password for the next level on this page, but rightclicking has been blocked!

I check source of this page.
`lynx --source http://natas2:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi@natas2.natas.labs.overthewire.org`

I access this web page with chrome and developer tool(press F12).
And I found mybrowser access to following image file.
`http://natas2.natas.labs.overthewire.org/files/pixel.png`

This file exist under files URI. I check this files page and users.txt exist in this route.
And natas3's password was existing here.

natas3:sJIJNW6ucpu6HPZ1ZAchaDtwd7oGrD14
