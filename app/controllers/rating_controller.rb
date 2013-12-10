class RatingController < ApplicationController
  
  def update
	@rating = Rating.find(params[:id})
	@project = @rating.project
	
	if @rating.update_attributes(rating_score: params[:rating_score])
		respond_to do |format|
			format.js
		end
	
	end
end

end