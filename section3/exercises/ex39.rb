states = {
  'Oregon' => 'OR',
  'Florida' => 'FL',
  'California' => 'CA',
  'New York' => 'NY',
  'Michigan' => 'MI'
}

cities = {
  'CA' => 'San Francisco',
  'MI' => 'Detriot',
  'FL' => 'Jacksonville'
}

cities['NY'] = 'New York'
cities['OR'] = 'Portland'

puts '-' * 10
puts "NY State has: #{cities['NY']}"
puts "OR State has: #{cities['OR']}"

puts '-' * 10
puts "Michigan's abbreviation is: #{states['Michigan']}"
puts "Florida's abbreviation is: #{states['Florida']}"

puts '-' * 10
puts "Michigan has: #{cities[states['Michigan']]}"
puts "Florida has: #{cities[states['Florida']]}"

puts '-' * 10
states.each do |state, abbrev|
  puts "#{state} is abbreviated #{abbrev}"
end

puts '-' * 10
cities.each do |abbrev, city|
  puts "#{abbrev} has the city #{city}"
end

puts '-' * 10
states.each do |state, abbrev|
  city = cities[abbrev]
  puts "#{state} is abbreviated #{abbrev} and has city #{city}"
end

puts '-' * 10
state = states['Texas']

if !state
  puts "Sorry, no Texas"
end

city = cities['TX']
city ||= 'Does not exist'
puts "The city for the state of 'TX' is #{city}"



southwest = {
  'Nevada' => 'NV',
  'Arizona' => 'AZ',
  'New Mexico' => 'NM'
}

sw_cities = {
  'NV' => 'Las Vegas',
  'AZ' => 'Phoenix',
  'NM' => 'Santa Fe'
}

puts "Nevada's abbreviation is: #{southwest['Nevada']}"

puts "Nevada's capital is not #{sw_cities['NV']}."

sw_cities.each do |abbrev, capital|
  puts "The capital of #{southwest[abbrev]} is #{sw_cities[capital]}."
end
