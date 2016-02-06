module ApplicationHelper
	def earnings_average(result)
		return 'No data.' unless result && result.values.any?
		'$' + result.values.first.to_f.round(2).to_s
	end	
end
