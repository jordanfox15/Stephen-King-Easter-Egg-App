class BooksController < ApplicationController

	def index
		@books = Book.all
		render json: @books
	end

	def show
		@book = Book.find(params[:id])
		@repeaters = @book.repeaters
		render json: {book: @book, repeaters: @repeaters}
	end

end
