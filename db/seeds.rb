puts "Cleaning up articles..."
Article.destroy_all

puts "Creating articles..."
10.times do
  Article.create!(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraphs(number: 3).join("\n\n")
  )
end

puts "Done!"
