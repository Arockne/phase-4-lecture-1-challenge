class BookShowSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :description, :cover_image_url, :finished_reading

  has_many :readers
  has_many :users_who_want_to_read


# The BookShow will display the attributes and also the readers of the book
# Advanced: try to read the ActiveModelSerializers guides on associations to figure out how you can also display the users who have actually read the book (not just added it to their reading list)