# frozen_string_literal: true

p BasicObject.instance_methods(false).sort
require 'builder'
xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)
xml.instruct!
xml.friends do
  xml.friend(source: 'career') do
    xml.name('Joe Leo')
    xml.address do
      xml.street('123 Main Street')
      xml.city('Anywhere, USA 00000')
    end
  end
end
