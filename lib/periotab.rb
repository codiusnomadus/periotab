require "periotab/version"

class Periotab
	def self.hi(language = 'english')
		translator = Translator.new
		translator.hi
	end
end

require 'periotab/translator'
