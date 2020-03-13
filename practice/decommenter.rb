# frozen_string_literal: true

# it reads from one file and writes everything
# that is not a comment to another file.
module DeCommenter
  def self.decomment(infile, outfile, comment_re = /\A\s*#/)
    infile.each do |inline|
      outfile.print inline unless inline =~ comment_re
    end
  end
end

path = '/Users/escray/Study/professional/SourceCode/Ruby/twgr/practice/loop.rb'
File.open(path) do |inf|
  File.open(path + '.out', 'w') do |outf|
    DeCommenter.decomment(inf, outf)
  end
end
