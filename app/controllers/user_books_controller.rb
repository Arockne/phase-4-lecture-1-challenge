class UserBooksController < ApplicationController

  def index
    user_books = current_user.books
    render json: user_books, status: :ok
  end
end
