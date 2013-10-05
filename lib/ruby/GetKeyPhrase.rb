#coding:utf-8
require "json"
require "open-uri"

### method ###
class GetKeyPhrase 
	attr_accessor :app_id
	@@ur_head = "http://jlp.yahooapis.jp/KeyphraseService/V1/extract?"
	def initialize id
		@app_id = id
		@output = "json"
	end
	def get str
		keyword = URI::escape(str)
		return result = JSON.load(open("#{@@ur_head}appid=#{@app_id}&sentence=#{keyword}&output=#{@output}"))
	end
end
### test
=begin
gkp = GetKeyPhrase.new("dj0zaiZpPXlka1lNaHBIcWlwdSZzPWNvbnN1bWVyc2VjcmV0Jng9ODc-")
p gkp.get("我々は宇宙人")
=end