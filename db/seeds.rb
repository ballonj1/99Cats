# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Cat.destroy_all
CatRentalRequest.destroy_all

cat1 = Cat.create!(birth_date: "2012/01/20", color: 'green', name: 'kool',
  sex: 'F', description: "A cat's cat")
cat2 = Cat.create!(birth_date: "2012/01/20", color: 'red', name: 'drool',
  sex: 'M', description: "A red drool cat's cat cat cat")
cat3 = Cat.create!(birth_date: "2011/01/20", color: 'purple', name: 'skool',
  sex: 'F', description: "A skool cat's hat cat")


rental1 = CatRentalRequest.create!(cat_id: cat1.id, start_date: "2017/01/01", end_date: "2018/01/01" )
rental2 = CatRentalRequest.create!(cat_id: cat1.id, start_date: "2015/01/01", end_date: "2016/01/01" )
rental3 = CatRentalRequest.create!(cat_id: cat1.id, start_date: "2013/01/01", end_date: "2014/01/01" )
