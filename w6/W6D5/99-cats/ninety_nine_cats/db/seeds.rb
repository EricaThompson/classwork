# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Cat.destroy_all
cat1 = Cat.create!(birth_date: '2015/01/20', color: 'blue', name: 'kitty', sex: 'M', description: '1 of a kind!'  )
cat2 = Cat.create!(birth_date: '2014/02/20', color: 'red', name: 'bitly', sex: 'F', description: '2 of a kind!'  )
cat3 = Cat.create!(birth_date: '2009/04/05', color: 'blue', name: 'gitly', sex: 'M', description: '3 of a kind!'  )
cat4 = Cat.create!(birth_date: '2017/12/20', color: 'orange', name: 'mizty', sex: 'F', description: '4 of a kind!'  )
cat5 = Cat.create!(birth_date: '2012/11/19', color: 'green', name: 'glitzy', sex: 'M', description: '5 of a kind!'  )




