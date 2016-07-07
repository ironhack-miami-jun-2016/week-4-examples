# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

bookA = Book.create(title: "Dune", author: "Frank Herbert", year: 1986, description: "Trippy science fiction / messiah shit.", genre: "Science Fiction", rating: 5.0)
bookB = Book.create(title: "Lolita", author: "Vladimir Nabakov", year: 1958, description: "Pedophile kidnaps Lolita.", genre: "Novel", rating: 4.5)
bookC = Book.create(title: "The Book of Five Rings", author: "Miyamoto Musashi", year: 1645, description: "Martial arts and life philosophy.", genre: "Zen", rating: 5.0)
bookD = Book.create(title: "To Kill a Mocking Bird", author: "Harper Lee", year: 1960, description: "Classic of modern American literature.", genre: "Novel", rating: 4.5)
