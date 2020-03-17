# frozen_string_literal: false

class Regexp
  alias __old_match__ match
  def match(string)
    __old_match__(string) || []
  end
end

string = 'A test string'
re = /A (ample) string/
substring = re.match(string)[1]

p substring
p /abc/.match('X')[1]

string = 'Hello there!'
p string.gsub!(/e/, 'E').reverse!
p string

class String
  alias __old_gsub_bang__ gsub!
  def gsub!(*args, &block)
    __old_gsub_bang__(*args, &block)
    self
  end
end

string = 'Hello there!'
p string.gsub!(/zzz/, 'xxx').reverse!
p string

states = { 'NY' => 'New York', 'NJ' => 'New Jersey', 'ME' => 'Maine' }
string = 'Eastern states include NY, NJ, and ME.'
if string.gsub!(/\b([A-Z]{2})\b/) { states[Regexp.last_match(1)] }
  puts 'Substitution occurred'
else
  puts 'String unchanged'
end
p string
string = 'Eastern states include NY, NJ, and ME.'
while string.sub!(/\b([A-Z]{2})\b/) { states[Regexp.last_match(1)] }
  puts "Replacing #{Regexp.last_match(1)} with #{states[Regexp.last_match(1)]}"
end
p string
