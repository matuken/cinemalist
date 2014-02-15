# -- coding:utf-8
#

require "rubygems"
require "mechanize"
require "date"


#次の金曜日と土曜日を算出

today = Date.today
nextweek = today + 8
p nextweek
while today < nextweek do 
	today + 1
    #if today.wday = 5 then
	#    friday = today
	    #saturday = today++
	#	p friday
		#p saturday
    #end
end

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


