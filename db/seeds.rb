# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Port.create!([{name: 'Ningbo', country: 'China'}, {name: 'Shanghai', country: 'China'},
  {name: 'Shenzhen', country: 'China'}, {name: 'Tianjin', country: 'China'},
  {name: 'Hangzhou', country: 'China'}, {name: 'Xiamen', country: 'China'}])


Size.create!([{name: "S"}, {name: "M"}, {name: "L"}, {name: "XL"}, {name: "XXL"},
            {name: "14"}, {name: "14,5"}, {name: "15"}, {name: "15,5"}, {name: "16"},
            {name: "16,5"}, {name: "17"}, {name: "17,5"}, {name: "18"}])

#handler_array = ["Nao","William", "Cathy"]

#["Mangharams","Top Line","Shaoxing Sunrise"].each_with_index do |supplier, i|
#  sup = Supplier.create!(name: supplier)
#  Handler.create(name: handler_array[i], supplier_id: sup.id)
#end

Supplier.create!([{name: 'Top Line', address: "Connaught Road", contact: "Ivan Dśouza", phone: '123456' , email: 'ivan@toplineasia.com'},
                  {name: 'Mangharams', address: "Connaught Road", contact: "Dinesh Mangharams", phone: '123456' , email: 'dinesh@mangharams.net'},
                  {name: 'Shaoxing', address: "Mansion road", contact: "Cathy Shao", phone: '123456' , email: 'cathy@srshaoxing.com'}])

Color.create!([{name: "Blue"}, {name: "Black"}, {name: "Green"}, {name: "Gray"},
            {name: "White"}, {name: "color5"}])

Category.create!([{name: "Pants"}, {name: "Shirts"}, {name: "Underwear"}, {name: "Accessories"},
            {name: "Shorts"}, {name: "Jeans"}])


Client.create!([{name: "La Polar", address: "Panamericana norte 520, Renca, Santiago.", country: "Chile", phone: "56 22 2222222"},
                {name: "Corona", address: "Panamericana norte 520, Renca, Santiago.", country: "Chile", phone: "56 22 2222222"},
                {name: "Vandine", address: "Panamericana norte 520, Renca, Santiago.", country: "Chile", phone: "56 22 2222222"},
            {name: "Van Heusen S.A.C.", address: "Panamericana norte 520, Renca, Santiago.", country: "Chile", phone: "56 22 2222222"},
          ])


Seller.create!([{name: "Antonio Laban", email: "alaban@laban.cl", country: "Chile", phone: "56 22 2222222"},
                 {name: "Luis Sepulveda", email: "alaban@laban.cl", country: "Chile", phone: "56 22 2222222"},
               {name: "M.A. Campos", email: "alaban@laban.cl", country: "Chile", phone: "56 22 2222222"}])

Season.create!([{name: "Winter 2017"}, {name: "Summero 2017-2018"}, {name: "Winter 2018"}, {name: "Summer 2018-2019"}])

