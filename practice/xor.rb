class String
  def ^(key)
    kenum = key.each_byte.cycle
    each_byte.map { |byte| byte ^ kenum.next }.pack("C*").force_encoding(self.encoding)
  end
end

str = "zhaorui"
key = "escray"
x = str ^ key
p x
orig = x ^ key
p orig
