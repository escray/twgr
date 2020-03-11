module Music
  class Scale
    NOTES = %w(c c# d d# e f f# g a a# b)
    def play
      NOTES.to_enum
    end
  end
end

scale = Music::Scale.new
scale.play.map { |note| puts "Next note is #{note}" }
scale.play.with_index(1) {|note, i| puts "Note #{i}: #{note}" }
p scale.play.map { |note| note.include?('f') }
p scale.play.map { |note| note.upcase }

# practice/music.rb:12:in `<main>': undefined method `map' for #<Music::Scale:0x00007fedba04de68> (NoMethodError)
