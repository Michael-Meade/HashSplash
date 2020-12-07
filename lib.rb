require 'json'
class HashSplash
	def initialize(string)
		@string = string
	end
	def string
		@string
	end
	def identify
		matched = []
		read_json.each do |r|
			if /#{r[1]}/.match(string)
				matched << r[0]
			end
		end
	puts matched
	end
	def read_json
		read = File.read("regex.json")
	JSON.parse(read)
	end
end

HashSplash.new("7f83b1657ff1fc53b92dc18148a1d65dfc2d4b1fa3d677284addd200126d9069").identify