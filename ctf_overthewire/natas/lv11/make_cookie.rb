require "json"
require "base64"

def str2bin( str )
  result = ""
  ary = str.unpack("C*")
  ary.each do |each|
    result += each.to_s(2).rjust(8, "0")
  end
  return result
end

def bin2str( bin_ary )
  tmp = []
  each_char = ""
  for i in 0..bin_ary.size-1
    each_char += bin_ary[i].to_s
    if each_char.size == 8
      tmp << each_char.to_i(2)
      each_char = ""
    end
  end
  return tmp.pack("C*")
end

def xor_enc( bin_ary, key )
  result = []
  key_ary = key.split("")
  for i in 0..bin_ary.size-1
    xor_bit = key_ary[(i%key.size)].to_i
    v = bin_ary[i].to_i
    result << ( xor_bit ^ v )
  end
  return result
end

def get_xor_char_ary before, after
  start = before.split("")
  goal = after.split("")
  enc_key = []

  for i in 0..start.size
    s_e = start[i].to_i
    g_e = goal[i].to_i
    enc_key << ( s_e ^ g_e )
  end
  return enc_key
end

def get_enc_key( bin_ary )
  key = ""
  key_len = 0
  total = bin_ary.join("")
  (0..bin_ary.size-1).to_a.reverse_each do |each|
    tmp = bin_ary[each..-1].join("")
    if total.start_with? tmp
      if key.size < tmp.size
        if key_len < tmp.size-key.size
          key_len = tmp.size-key.size
        end
        key = tmp
      end
    end
  end
  return bin_ary[0..key_len-1].join("")
end

def main
  data = { "showpassword"=>"no", "bgcolor"=>"#ffffff"}
  cookie = "ClVLIh4ASCsCBE8lAxMacFMZV2hdVVotEhhUJQNVAmhSEV4sFxFeaAw="
  jdata = JSON.generate(data)
  puts "Default: #{jdata}"
  puts "DefaultCookie: #{cookie}"
  start = str2bin(jdata)
  goal  = str2bin(Base64.decode64(cookie))

  xor_ary = get_xor_char_ary(start, goal)
  enc_key = get_enc_key(xor_ary)
  puts "Key: #{enc_key}"

  data = { "showpassword"=>"yes", "bgcolor"=>"#0000ff"}
  jdata2 = JSON.generate(data)
  puts "Original: #{jdata2}"
  start2 = str2bin(jdata2).split("")
  enc_bin  = xor_enc(start2, enc_key)
  puts start2.join("")
  puts enc_bin.join("")
  enc_data = bin2str(enc_bin)
  result = Base64.encode64(enc_data)
  puts "Cookie: #{result}"
end

if __FILE__ == $0
  main
end
