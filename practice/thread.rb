# frozen_string_literal: true

t = Thread.new do
  puts 'Starting the thread'
  sleep 2
  puts 'At the end of the thread'
end
sleep 1
puts 'Outside the thread'
t.join

puts 'Trying to read in some files ...'
t = Thread.new do
  (0..2).each do |n|
    File.open("part0#{n}") do |f|
      text << f.readlines
    end
  rescue Errno::ENOENT
    puts "Message from thread: Failed on n=#{n}"
  end
end
t.join
puts 'Finished!'

t = Thread.new do
  puts '[Starting thread]'
  Thread.stop
  puts '[Resuming thread]'
end
sleep 1
puts "Status of thread: #{t.status}"
puts "Is thread stopped? #{t.stop?}"
puts "Is the thread alive? #{t.alive?}"
puts
puts 'waking up thread and joining it...'
t.wakeup
t.join
puts
puts "Is the thread alive? #{t.alive?}"
puts "Inspect string for thread: #{t.inspect}"
