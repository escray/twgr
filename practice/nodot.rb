class C
  def x
    puts "This is method 'x'"
  end
  def y
    puts "This is method 'y', about to call x without a dot"
    x
  end

  def set_v
    @v = "\nI am an instance variable and I belong to any instance of C."
  end

  def show_var
    puts @v
  end

  def self.set_v
    @v = "\nI am an instance variable and I belong to C."
  end
end

c = C.new
c.y

C.set_v
c = C.new
c.set_v
c.show_var
