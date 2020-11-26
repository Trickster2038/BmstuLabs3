require 'nokogiri'
doc = Nokogiri::XML(File.read('lab10v2.xml'))
xslt = Nokogiri::XSLT(File.read('lab10_parser.xslt'))
puts xslt.transform(doc)
