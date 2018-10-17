# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

 people = Person.create({"name"=>"Carlos", "cep"=>14095170, "country"=>"Brasil", "state"=>"SP", "city"=>"Ribeirao"})
 people2 = Person.create({"name"=>"Joao", "cep"=>14095180, "country"=>"Brasil", "state"=>"SP", "city"=>"Ribeirao"})


customers = Customer.create({"person"=>people, "cpf"=>"33804600875", "nickname"=>"kadu"})

companies = Companie.create({"person"=>people2, "cnpj"=>"33804600875", "nickname"=>"barzinho", "description"=>"bardoze"})

#Customer.create({"person"=>{"person.name"=>"Carlos2"}, "cpf"=>"33804600875", "nickname"=>"kadu"})
