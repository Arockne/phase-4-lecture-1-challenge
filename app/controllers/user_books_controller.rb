class UserBooksController < ApplicationController

  def index
    user_books = current_user.user_books
    render json: user_books, status: :ok
  end

  def create
    user_book = current_user.user_books.create!(user_book_params)
    render json: user_book.book, status: :created
  end

  def update
    user_book = current_user.user_books.find(params[:id])
    user_book.update!(update_user_book_params)
    render json: user_book, status: :ok
  end

  def destroy
    user_book = current_user.user_books.find(params[:id])
    user_book.destroy
  end

  private

  def user_book_params
    params.permit(:book_id)
  end

  def update_user_book_params
    params.permit(:read)
  end
end
