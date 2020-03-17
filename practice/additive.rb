# frozen_string_literal: true

require 'active_support'
require 'active_support/core_ext'
p 'person'.pluralize
p 'litter_dorritt'.titleize

class String
  alias __old_reverse__ reverse
  def reverse
    warn 'Reversing a string!'
    __old_reverse__
  end
end
puts 'David'.reverse

p Time.now.to_s
p Time.now.to_s(:db)
p Time.now.to_s(:number)
p Time.now.to_s(:rfc822)
