class BooksController < ApplicationController
  def index
    books = Book.all
    render json: books, status: :ok, each_serializer: BookIndexSerializer
  end  

  def show
    book = Book.find(params[:id])
    render json: book, include: :readers, status: :ok, serializer: BookShowSerializer
  end

  def create
    book = Book.create!(book_params)
    render json: book, status: :created
  end

  private

  def book_params
    params.permit(:title, :author, :description, :cover_image_url)
  end
end
