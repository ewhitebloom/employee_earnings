class EarningsController < ApplicationController
	def index
      @result = params[:title] ?
			      EarningsReport
	                .includes(:title)
	                .where("UPPER(titles.name) = UPPER(?)", params[:title])
	                .references(:title)
	                .first 
	            : nil
	end  	
end
