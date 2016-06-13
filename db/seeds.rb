require 'random_data'

50.times do
  Post.create!(
  title: RandomData.random_sentence,
  body: RandomData.random_paragraph
  )
end

posts = Post.all
100.times do
  Comment.create!(
    post: posts.sample,
    body: RandomData.random_paragraph
  )
end

Advertisement.create!(
  title: "This is an Ad",
  body: "You should buy this thing and or service",
  price: 50
)
Advertisement.create!(
  title: "This is not an Ad",
  body: "Tricked you, buy our goods!",
  price: 100
)
Advertisement.create!(
  title: "This is a funny Ad",
  body: "We made you laugh, now give us your money",
  price: 500
)

puts "Seeding finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
