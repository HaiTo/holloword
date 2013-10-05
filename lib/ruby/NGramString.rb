#coding:utf-8

#author : HaiTo
#package : holloword.lib.ruby
#how2 
# require "holloword/lib/ruby/NGramString.rb"
# s = NGramString::new(str)::parse_n_gram(n) 

class NGramString < String
	def parse_n_gram n
		c = self.split(//u)
		return [self] if c.size <= n
		return c.each_cons(n).collect(&:join)
	end
end