class Recipe
	include HTTParty

	debug_output $STDOUT
	
	key_value = ENV['FOOD2FORK_KEY']
	hostport = ENV['FOOD2FORK_SERVER_AND_PORT'] || 'www.food2fork.com'
	# hostport = 'www.food2fork.com'
	base_uri "http://#{hostport}/api"
	# base_uri "http://www.food2fork.com/api"
	default_params key: key_value
	format :json

	def self.for(keyword)
		request = get("/search", query: { q: keyword})
		return request["recipes"]
	end
end