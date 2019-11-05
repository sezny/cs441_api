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
perm = Permission.create!(role: :admin)
event = Event.create!(title: 'Tournament soccer tuesday', description: 'Come watch or play soccer at the csusm tournament')
perm.events << event
user.events << event
user.events << event
event = Event.create!(title: 'Soccer game', description: 'Come play soccer game to practise')
perm.events << event
user.events << event
user.events << event
event = Event.create!(title: 'Party Late Nigth', description: 'All the miderms are over. Now is time to enjoy the funny part of people')
perm.events << event
user.events << event
user.events << event
event = Event.create!(title: 'Bingo', description: 'Come play and win incredible prizes')
perm.events << event
user.events << event
user.events << event
event = Event.create!(title: 'Trash Clean-Up', description: 'Help the environment by cleaning the area outside campus. Is a good way to meet people, do sports and get a free lunch.')
perm.events << event
user.events << event
user.events << event
event = Event.create!(title: 'Exam Preparation', description: 'Preparation for the CS441 Software Engineering exam')
perm.users << user
perm.events << event
user.events << event
perm.save!