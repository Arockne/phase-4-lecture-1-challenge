class UserBook < ApplicationRecord
  belongs_to :book
  belongs_to :user

  validates :book_id, uniqueness: {
    scope: :user_id,
    message: 'Cannot have the same book twice in reading list'
  }
end
