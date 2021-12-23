class UserBooksController < ApplicationController

  def index
    user_books = current_user.books
    render json: user_books, status: :ok
  end

  def create
    user_book = current_user.user_books.create!(user_book_params)
    render json: user_book.book, status: :created
  end

  private

  def user_book_params
    params.permit(:book_id, :read)
  end
end
