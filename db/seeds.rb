# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog}",
    body:  "At a high level, metaprogramming is useful in working toward the DRY
    principle (Don't Repeat Yourself). Also referred to as 'Once and Only Once,'
    the DRY principle dictates that you should only need to express a particular
    piece of information once in a system. Duplication is usually unnecessary,
    especially in dynamic languages like Ruby. Just as functional abstraction
    allows us to avoid duplicating code that is the same or nearly the same,
    metaprogramming allows us to avoid duplicating similar concepts when they
    recur throughout an application."
    )
  end

puts "10 blog posts created "

5.times do |skill|
  Skill.create!(
    title:            "Rails #{skill}",
    percent_utilized: 15
  )
end

puts "5 skills created"

9.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio title #{portfolio_item}",
  subtitle: "My greate service",
  body: "Metaprogramming is primarily about simplicity. One of the easiest ways
  to get a feel for metaprogramming is to look for repeated code and factor it 
  out. Redundant code can be factored into functions; redundant functions or
  patterns can often be factored out through the use of metaprogramming.",
  main_image: "http://placehold.it/600x400",
  thumb_image: "http://placehold.it/350x200"
  )
end
puts "9 portfolio items created"
