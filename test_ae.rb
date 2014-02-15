# -- coding:utf-8
#

require "rubygems"
require "mechanize"

agent = Mechanize.new
uri = "http://www.aeoncinema.com/"
page = agent.get(uri)
page2 = page.link_with(:text => "新百合ヶ丘").click
page3 = page2.link_with(:text => "上映スケジュール").click
page3.search('p').each do |title|
	if title.search('a') then 
	    l = title.text.strip! 
		if l == nil then
           next
		end
		if l =~ /^上映時間/ then
           next
		end
		l.gsub('\r','')
		p l 
	end  
end


