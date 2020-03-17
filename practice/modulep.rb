# frozen_string_literal: true

module P
end
module M
end

class C
  prepend M
  include P
end

c = C.new
class << c
  prepend P
  p ancestors
end
