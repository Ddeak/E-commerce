# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'CREATING ROLES'
Role.create([
  { :name => 'admin' }, 
  { :name => 'user' }, 
  { :name => 'band' }
], :without_protection => true)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :email => 'user@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user.email
user2 = User.create! :email => 'band@example.com', :password => 'please', :password_confirmation => 'please'
puts 'New user created: ' << user2.email
user3 = User.create! :email => "admin@example.com", :password => "password", :password_confirmation => 'password'
puts 'New user created: ' << user3.email

user.add_role :user
user2.add_role :band
user3.add_role :admin