class FetchDataService
	def initialize
		@base_url = "http://localhost:3001/"
	end


	def get_categories
		uri = URI.parse(@base_url + '/categories')
		@response = Net::HTTP.get(uri)
		# byebug
		parse_response
	end

	def get_products(category_id)
		
		uri = URI.parse(@base_url + '/products?category_id=' + category_id.to_s)
		@response = Net::HTTP.get(uri)
		# byebug
		parse_response
	end

	private
	def parse_response
		JSON.parse(@response)['data']
	end



end	