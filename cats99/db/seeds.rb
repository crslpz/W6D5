# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cats = Cat.create([
    {birth_date: '2019-09-21',color:'Green' ,name: 'Tom' , sex: 'M' ,description:'Sassy'},
    {birth_date: '1980-07-06',color: 'Gray',name: 'Grizabella', sex: 'F',description: 'The Glamour Cat'},
])

#  id          :bigint           not null, primary key
#  birth_date  :date             not null
#  color       :string           not null
#  name        :string           not null
#  sex         :string(1)
#  description :text             not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null