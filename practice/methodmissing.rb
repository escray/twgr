class Name
  def initialize(first_name, last_name)
    @first_name = first_name
    @last_name = last_name
  end

  def to_s
    instance_variables.each do |ivar|
      print "#{instance_variable_get(ivar)} " 
    end
  end

  def method_missing(m, args, &block)
    if m.to_s.end_with?('_name=')
      self.class.send(:define_method, m) do |args|
        instance_variable_set("@#{m.to_s.chop}", args)
      end
      send(m, args)
    else
      raise "No method for #{m}!"
    end
  end
end

n = Name.new('joe', 'Leo')
n.instance_variables
n.to_s
n.middle_name = 'Phillip'
n.instance_variables
n.to_s
# n.initials = "JPL"
# practice/methodmissing.rb:20:in `method_missing': No method for initials=! (RuntimeError)
