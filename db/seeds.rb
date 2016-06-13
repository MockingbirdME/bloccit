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
Post.find_or_create_by(title: "This post is always here", body: "Always here, always here; no, it's not going anywhere")
post = Post.find_by(title:"This post is always here")
Comment.find_or_create_by(body: "No, it's never gone, never gone away", post: post)
puts "Seeding finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
