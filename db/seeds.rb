puts "Cleaning the db..."
Restaurant.destroy_all

puts "Creating 5 restaurants..."

5.times do
  restaurant = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Restaurant #{restaurant.id} was created"
end

puts "All done 😃"
