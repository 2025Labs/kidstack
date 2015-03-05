module CatagoriesHelper

	def check
    	@question = Question.find(params[:id])
  	end

end
