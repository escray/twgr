def my_loop
  while tru
    yield
  end
end

def your_loop
  yield while true
end

class Integer
  def my_times
    c = 0
    puts "c = 0"
    puts "until c == #{self} ..."
    until c == self
      yield c
      c += 1
    end
    self
  end
  def my_each
    i = 0
    until i == self
      yield i
      i += 1
    end

    self
  end
  # practice/iteration.rb:25:in `my_each': no block given (yield) (LocalJumpError)

  def your_times
    # c = 0
    my_each {|i| yield i}

  end
end

ret = 5.my_times { |i| puts "I'm on iteration #{i}!" }
puts ret

# puts 5.my_each { |i| puts "#{i}"}
puts 5.your_times { |i| puts "I'm on my_each #{i}"}
