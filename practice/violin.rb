class Violin
  class String
    attr_accessor :pitch, :maker, :date
    def initialize(pitch)
      @pitch = pitch
    end
  end
  def initialize
    @e = String.new("E")
    @a = String.new("A")
  end
  def history
    ::String.new(maker + ", " + date)
  end
end
