# frozen_string_literal: true

/(abc)/.match('abc')
t = Thread.new do
  /(def)/.match('def')
  puts "$1 in thread: #{Regexp.last_match(1)}"
end
t.join
puts "$1 outside thread: #{Regexp.last_match(1)}"

t = Thread.new do
  Thread.current[:message] = 'Hello'
end
p t
p t.join
p t.keys
p t[:message]

t = Thread.new do
  Thread.current[:message] = 'Hola!'
end
p t
p t.join
p t.fetch(:message, 'Greetings!')
p t.fetch(:msg, 'Greetings!')
p t.fetch(:message)
