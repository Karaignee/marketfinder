# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
#       these are seed default values for the repeat period model
RepeatPeriod.delete_all
RepeatPeriod.create({name: "Daily", every_x: 1, daily: true  })       #1
RepeatPeriod.create({name: "Weekly", every_x: 7, daily: true })         #2
RepeatPeriod.create({name: "Fortnightly", every_x: 14, daily: true })      #3
RepeatPeriod.create({name: "Monthly", every_x: 30, daily: false })           #4
RepeatPeriod.create({name: "Three Months", every_x: 90, daily: false })        #5

puts 'everything is wonderful'


