class BooksController < ApplicationController
  def index
    @books_array = Book.all

    render "index"
  end
end
