class AsciisController < ApplicationController



	def new
		render 'new'

	end


	def create
		@text = params[:ascii][:user_text]
		a = Artii::Base.new :font => 'graffiti'
		@ascii_text = a.asciify(@text)
		render 'pretty_words'
	end
end
