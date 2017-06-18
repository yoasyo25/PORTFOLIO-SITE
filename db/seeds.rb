User.create!(
  email: "nanahoy@gmail.com",
  password: "password",
  password_confirmation: "password",
  name: "yohanan",
  roles: "site_admin"
)
puts "1 admin user created"

User.create!(
  email: "test@example.com",
  password: "password",
  password_confirmation: "password",
  name: "Test User",
)
puts "1 regular user created"

3.times do |topic|
  Topic.create!(
  title: "Topic #{topic}"
  )
end

puts "3 topics created"

10.times do |blog|
  Blog.create!(
    title: "My blog post #{blog + 1}",
    body:  "At a high level, metaprogramming is useful in working toward the DRY
    principle (Don't Repeat Yourself). Also referred to as 'Once and Only Once,'
    the DRY principle dictates that you should only need to express a particular
    piece of information once in a system. Duplication is usually unnecessary,
    especially in dynamic languages like Ruby. Just as functional abstraction
    allows us to avoid duplicating code that is the same or nearly the same,
    metaprogramming allows us to avoid duplicating similar concepts when they
    recur throughout an application.",
    topic_id: Topic.last.id
    )
end

puts "10 blog posts created "

  Skill.create!(
    title:            "Ruby on Rails",
    percent_utilized: 60
  )

  Skill.create!(
    title:            "Ruby",
    percent_utilized: 40
  )

puts "2 skills created"

8.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio title #{portfolio_item}",
  subtitle: "Ruby on Rails",
  body: "Metaprogramming is primarily about simplicity. One of the easiest ways
  to get a feel for metaprogramming is to look for repeated code and factor it
  out. Redundant code can be factored into functions; redundant functions or
  patterns can often be factored out through the use of metaprogramming.",
  main_image: "http://placehold.it/600x400",
  thumb_image: "http://placehold.it/350x200"
  )
end

1.times do |portfolio_item|
  Portfolio.create!(
  title: "Portfolio title #{portfolio_item}",
  subtitle: "Ruby",
  body: "Metaprogramming is primarily about simplicity. One of the easiest ways
  to get a feel for metaprogramming is to look for repeated code and factor it
  out. Redundant code can be factored into functions; redundant functions or
  patterns can often be factored out through the use of metaprogramming.",
  main_image: "http://placehold.it/600x400",
  thumb_image: "http://placehold.it/350x200"
  )
end

puts "9 portfolio items created"

3.times do |technology|
  Portfolio.last.technologies.create!(
    name: "Technology #{technology}"
  )
end

puts "3 technologies created"
