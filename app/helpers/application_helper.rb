module ApplicationHelper
	def earnings_average(result)
		return 'No data.' unless result
		'$' + result.average_total_earnings.round(2).to_s
	end
end
