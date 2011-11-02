# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
meal_times = TagType.create(tag_type:"meal_times")
Tag.create(name:"lunch", tag_type:meal_times)
Tag.create(name:"dinner", tag_type:meal_times)
