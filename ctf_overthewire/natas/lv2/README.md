# natas level2
natas is CTF with web application.

## using credential is below.
- User:natas2
- Pass:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi

check web site by lynx.
`lynx http://natas2:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi@natas2.natas.labs.overthewire.org`

I see following message in this page.(only this message exist in this).
You can find the password for the next level on this page, but rightclicking has been blocked!

I chek
I check source of this page.
`lynx --source http://natas2:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi@natas2.natas.labs.overthewire.org`

but any needed information is not exist in this, and I check verbose infomation of this web traffic.
`curl http://natas2.natas.labs.overthewire.org -u natas2:ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi --verbose`

~~~
Connected to natas2.natas.labs.overthewire.org (176.9.9.172) port 80 (#0)
Server auth using Basic with user 'natas2'
GET / HTTP/1.1
Host: natas2.natas.labs.overthewire.org
Authorization: Basic bmF0YXMyOlpsdXJ1QXRoUWs3UTJNcW1EZVRpVWlqMlp2V3kybUJp
User-Agent: curl/7.61.0
Accept: */*
~~~

I decode AUthorization infomation.
`echo bmF0YXMyOlpsdXJ1QXRoUWs3UTJNcW1EZVRpVWlqMlp2V3kybUJp | base64 -d`

I found password! it is ZluruAthQk7Q2MqmDeTiUij2ZvWy2mBi.
natas3:sJIJNW6ucpu6HPZ1ZAchaDtwd7oGrD14
