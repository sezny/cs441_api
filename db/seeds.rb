# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.delete_all
Event.delete_all
Permission.delete_all
user = User.create!(email: "luke@csusm.edu", password: "Password")
event = Event.create!(title: 'Tournament soccer tuesday', description: 'Come watch or play soccer at the csusm tournament')
perm = Permission.create!(role: :admin)
perm.users << user
perm.events << event
user.events << event
perm.save!