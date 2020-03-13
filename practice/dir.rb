# frozen_string_literal: true

path = '/Users/escray/Study/professional/SourceCode/Ruby/twgr/practice'
d = Dir.new(path)
entries = d.entries
entries.delete_if { |entry| entry =~ /^\./ }
entries.map! { |entry| File.join(d.path, entry) }
entries.delete_if { |entry| !File.file?(entry) }
print 'Total bytes: '
puts entries.inject(0) { |total, entry| total + File.size(entry) }

entries = Dir["#{path}/*"].select { |entry| File.file?(entry) }
print 'Total bytes: '
puts entries.inject(0) { |total, entry| total + File.size(entry) }
