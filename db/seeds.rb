# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


sam = User.create(username: 'sam', email: 'hello@yahoo.com', bio: 'Here I am')
bob = User.create(username: 'bob', email: 'iambob@gmail.com', bio: 'I like turtles')

codeschool = Book.create(title: 'codeschool', author: 'Morgan Lopes', description: 'Overcome Imposter Syndrome')
bluesky = Book.create(title: 'bluesky', author: 'bluesky', description: 'to jot down some notes')
hello = Book.create(title: 'itsme', author: 'I can see it in your eyes', description: 'Overcome Imposter Syndrome')


sam.books = [codeschool, bluesky, hello]
bob.books = [bluesky, codeschool]