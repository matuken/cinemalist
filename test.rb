# -- coding:utf-8
#

require "rubygems"
require "mechanize"

agent = Mechanize.new
uri = "http://www.tohotheater.jp/index.html"
page = agent.get(uri)
page2 = page.link_with(:text => "劇場案内").click
page3 = page2.link_with(:text => "TOHOシネマズ ららぽーと横浜").click
p page3


