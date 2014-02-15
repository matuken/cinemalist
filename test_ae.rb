# -- coding:utf-8
#

require "rubygems"
require "mechanize"

agent = Mechanize.new
uri = "http://www.aeoncinema.com/"
page = agent.get(uri)
page2 = page.link_with(:text => "新百合ヶ丘").click
page3 = page2.link_with(:text => "上映スケジュール").click
p page3
page3.search(:text => '土竜の唄').each do |title|
  p title
end


