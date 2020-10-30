# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{username: '1'}, {username: '2'},{username: '3'},{username: '4'},{username: '5'}])
artworks = Artwork.create([{ title: 'Star Wars', artist_id: 8, image_url: 'starwars.com'  }, { title: 'Lord of the Rings', artist_id:13, image_url: 'thering.com'  }, { title: 'Star Wars', artist_id: 13, image_url: 'starwars.com'  }])



