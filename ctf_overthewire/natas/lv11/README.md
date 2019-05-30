# natas level11
natas is CTF with web application.
password will be written `/etc/natas_webpass/natas11`.

## using credential is below.
- User:natas11
- Pass:U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK

## using tools.
- shell(curl, base64, etc)
- lynx
- ruby
check web site by lynx.
`lynx http://natas11:U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK@natas11.natas.labs.overthewire.org`


followings is message of this page.
~~~
Cookies are protected with XOR encryption
Background color: #ffffff_____________ Set color
~~~

I check source code of this application and found followings.
~~~
$defaultdata = array( "showpassword"=>"no", "bgcolor"=>"#ffffff");
function saveData($d) {
   setcookie("data", base64_encode(xor_encrypt(json_encode($d))));
}
~~~
default cookie value is `ClVLIh4ASCsCBE8lAxMacFMZV2hdVVotEhhUJQNVAmhSEV4sFxFeaAw%3D`. I got this by following command.
`curl http://natas11.natas.labs.overthewire.org/index-source.html -u natas11:U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK --verbose`

make decryption code by ruby. "make_cookie.rb".
I got password when I send new cookie by curl.

~~~
curl http://natas11.natas.labs.overthewire.org -u natas11:U82q5TCMMQ9xuFoI3dYX61s7OZD9JKoK --cookie 'data=ClVLIh4ASCsCBE8lAxMacFMOXTlTWxooFhRXJh4FGnBTVF4sFxFeLFMK' --verbose
~~~
natas12 : EDXp0pS26wLKHZy1rDBPUZk0RKfLGIR3

