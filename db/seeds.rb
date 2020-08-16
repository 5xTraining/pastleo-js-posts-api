# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

POSTS_COUNT = 500
def ffaker_lorem_cht(type, reqire_length = 1)
  lorem = ''
  while lorem.length < reqire_length
    lorem = ZhConv.convert("zh-tw", FFaker::LoremCN.send(type).dup)
  end

  lorem
end

puts 'Generating posts:'
POSTS_COUNT.times do
  paragraphes = Array.new(rand(2..10)) do
    ffaker_lorem_cht(:paragraph)
  end

  Post.create!(
    title: ffaker_lorem_cht(:sentence),
    author: "ffaker+zhconv - #{ffaker_lorem_cht(:word, 3)}",
    description: paragraphes.first[0..63],
    content: paragraphes.join("\n")
  )

  print '.'
end
puts " Done, generated #{POSTS_COUNT} posts"
