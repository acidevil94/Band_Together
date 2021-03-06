module SearchHelper
	#require 'pp'
	def select_options(collection, type)
		value_text = Hash.new
		collection.each do |c|
			case type 
			when 'ads_band_manager'
				value_text[c.user.username] = c.user.username
			when 'ads_band'
				value_text[c.band.name] = c.band.name
			when 'nation'
				value_text[c.nation] = c.nation
			when 'region'
				value_text[c.region] = c.region
			when 'city'
				value_text[c.city] = c.city
			when 'band_manager'
				value_text[c.band_manager.username] = c.band_manager.username		
			end	  			  		  		
	  	end
	  	keys = value_text.keys.sort
	  	result = Array.new
	  	keys.each do |k|
	  		result.push [k, value_text[k]]	  		
	  	end
	  	result
  	end
end
