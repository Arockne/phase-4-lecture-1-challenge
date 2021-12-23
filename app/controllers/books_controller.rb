class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, status: :ok
  end  

  def show
    book = Book.find(params[:id])
    render json: book, include: :users, status: :ok
  end



  private

  def book_params
    params.permit(:title, :author, :description, :cover_image_url)
  end
end
