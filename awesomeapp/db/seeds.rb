# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times {
    Project.create(name: Faker::App.name, start_date: Faker::Date.in_date_period, end_date: Faker::Date.forward(days: 30) )
}

5.times {
    Activity.create(name_activity: Faker::Company.catch_phrase, 
                    start_date: Faker::Date.in_date_period,
                    end_date: Faker::Date.forward(days: 30),
                    project_id: rand(1..10),
                    finish: rand(2)
                      )
}

puts "Total de Projetos Criado #{Project.count}"
puts "Total de Atividade Criado #{Activity.count}"