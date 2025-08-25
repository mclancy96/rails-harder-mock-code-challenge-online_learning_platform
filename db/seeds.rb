# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Author.destroy_all
Post.destroy_all
User.destroy_all
Course.destroy_all
Lesson.destroy_all
Enrollment.destroy_all

authors = [
  "Jane Austen",
  "Mark Twain",
  "Virginia Woolf",
  "James Baldwin",
  "Toni Morrison",
  "George Orwell"
]

posts = [
  "The Art of Writing",
  "Reflections on Society",
  "A Journey Through Time",
  "On the Power of Words",
  "Memoirs of a Novelist",
  "The Future of Literature"
]

users = User.create!([
  { name: "Alice", email: "alice@example.com" },
  { name: "Bob", email: "bob@example.com" }
])

courses = Course.create!([
  { title: "Ruby on Rails Basics", description: "Learn the basics of Rails." },
  { title: "Advanced JavaScript", description: "Deep dive into JS." }
])

lessons = [
  { title: "Intro to Rails", content: "Welcome to Rails!", course: courses[0] },
  { title: "Rails Models", content: "All about models.", course: courses[0] },
  { title: "JS Fundamentals", content: "JS basics.", course: courses[1] },
  { title: "Async JS", content: "Promises and async.", course: courses[1] }
]
Lesson.create!(lessons)

Enrollment.create!([
  { user: users[0], course: courses[0], progress: 50 },
  { user: users[1], course: courses[1], progress: 20 }
])

authors.each do |author|
  Author.create(name: author)
end

posts.each do |post|
  Post.create(title: post)
end
