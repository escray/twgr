# frozen_string_literal: true

record = File.open('practice/record', 'a')
old_stdout = $stdout
$stdout = record
$stderr = $stdout
puts 'This is a record'

z = 10 / 0
