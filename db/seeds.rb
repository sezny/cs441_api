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

def create_example_event(user, perm, title, description)
    event = Event.create!(title: title, description: description)
    perm.events << event
    user.events << event
    user.events << event
end

create_example_event(user, perm, 'Tournament soccer tuesday', 'Come watch or play soccer at the csusm tournament')
create_example_event(user, perm, 'Soccer game', 'Come play soccer game to practise')
create_example_event(user, perm, 'Party Late Nigth', 'All the miderms are over. Now is time to enjoy the funny part of people')
create_example_event(user, perm, 'Bingo', 'Come play and win incredible prizes')
create_example_event(user, perm, 'Trash Clean-Up', 'Help the environment by cleaning the area outside campus. Is a good way to meet people, do sports and get a free lunch.')
create_example_event(user, perm, 'Exam Preparation', 'Preparation for the CS441 Software Engineering exam')
perm.save!