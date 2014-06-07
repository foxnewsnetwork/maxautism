# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

require 'ffaker'

def board_params
  {
    speaker: Faker::Name.first_name,
    thoughts: Faker::Lorem.sentence
  }
end

10.times do
  Autism::Board.create! board_params
end