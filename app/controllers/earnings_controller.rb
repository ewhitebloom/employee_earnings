class EarningsController < ApplicationController
	def index
      @result = if params[:title]
			      EmployeeEarning
	                .includes(:title)
	                .where("UPPER(titles.name) = UPPER(?)", params[:title])
	                .group('titles.name')
	                .average(:total_earnings)
			    else 
			      nil  
			    end
	end  	
end
