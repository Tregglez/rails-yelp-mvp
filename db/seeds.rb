puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
categories = %w[chinese italian japanese french belgian]

10.times do
  restaurant = Restaurant.create(
    name: Faker::Name.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.cell_phone,
    category: categories.sample
  )
  puts "created #{restaurant.name}"
end

puts "Finished!"
