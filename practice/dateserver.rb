# frozen_string_literal: true

require 'socket'
s = TCPServer.new(3939)
while (conn = s.accept)
  Thread.new(conn) do |c|
    conn.puts "Hi. What's your."
    name = c.gets.chomp
    conn.puts "Hi, #{name}. Here's the date."
    conn.puts `date`
    conn.close
  end
end
s.close
