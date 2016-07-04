class SiteController < ApplicationController
  # get "/", to: "site#calculator"
  def calculator
    render "calculator"
  end


  # post "/calculate", to: "site#calculate"
  def calculate
    @first = params[:first_num].to_f
    @second = params[:second_num].to_f

    @result = @first + @second

    render "results"
  end
end
