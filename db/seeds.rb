# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#Seeds ---> Forma de poblar la base de datos con registros "falsos", para tener información con la cual probar.

30.times do |i|
  @project = Project.create(name_project: "proyecto-#{i+1}", description: "Descripción del proyecto-#{i+1}",
    start_on: Date.today - (i).days, finish_on: Date.today + (i).days , state: Project.states.keys.sample)
end

# Project.states.keys.sample --> Indicamos que tome al azar la llave del hash de todos los estados.
#Se debe correr el comando rails db:seed para que tome las instrucciones de este archivo y poble la base de datos.
