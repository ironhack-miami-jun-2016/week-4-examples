class BooksController < ApplicationController
  def index
    @books_array = Book.all

    render "index"
  end

  def new
    @the_book = Book.new

    render "new"
  end

  def create
    @the_book = Book.new(book_params)

    if @the_book.save
      redirect_to(root_path)
    else
      render "new"
    end
  end


  private

  def book_params
      #                               Listing the names of the inputs from the form
      #                                                    |
      #                             ------------------------------------------------
      #                             |       |        |         |          |        |
    params.require(:book).permit(:title, :author, :year, :description, :genre, :rating)
      #              ^
      #              |
      # Model name in snake case
      #   BookStore ---> book_store
      #        Book ---> book
  end
end
