class RubyWelcomeWagon
  def message
    <<~EOM
      Welcome to the world of Ruby!
      We're happy you're here!
    EOM
  end
end

puts RubyWelcomeWagon.new.message

array = [1,2,3, <<EOM, 4]
This is the heredoc!
It becomes array[3].
EOM

p array
