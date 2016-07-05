class TextInspectionsController < ApplicationController

	def new 
		render 'new'
	end


    def word_freq(words)
    words += " "
    new_array = []
    word_array = words.downcase.split(" ")
    sorted_array = word_array.sort
    word_array.each do |word|
    new_array << [words.downcase.scan(word + " " ).count, word]
    end
    most_freq_words = new_array.sort {|a, b| b[0] <=> a[0]}
    final = most_freq_words.uniq.first(10)
    final
    end

    def create
    @text =  params[:text_inspection][:user_text]
    @word_count = @text.split(" ").length
    @freq_array = word_freq(@text)



    render 'results'


    end




end
