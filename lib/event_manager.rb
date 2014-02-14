require "csv"
puts "EventManager Initialized!"

contents = CSV.open "../event_attendees.csv", headers: true,
											header_converters: :symbol
contents.each do |row|
	name = row[:first_name]
	zipcode = row[:zipcode]
	puts "#{name} #{zipcode}"
end

# lines = File.readlines "../event_attendees.csv"
# lines.each_with_index do |line, index|
	# next if index == 0
	# columns = line.split(',')
	# name = columns[2]
	# puts name
	# index
# end