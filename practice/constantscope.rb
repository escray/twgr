module M
  class C
    X = 2
    class D
      module N
        X = 1
      end
    end
    puts D::N::X
    puts "inside"
  end
end
puts M::C::D::N::X
puts M::C::X
