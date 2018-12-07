# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Jon = User.create(name: "jon", password_digest: "jon")
Mike = User.create(name: "mike", password_digest: "mike")

Post1 = Post.create(user_id: "1", title: "cheese", body: "poop")
Post2 = Post.create(user_id: "1", title: "meow", body: "mix")
