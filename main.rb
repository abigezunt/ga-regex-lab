require_relative 'source'
require 'pry'

# puts @source_text



# string.scan(pattern)

def valid_ip_addresses(string)
	arr = string.scan(/\b([0-9]|1?[0-9][0-9]|2[0-9][0-9])\.([0-9]|1?[0-9][0-9]|2[0-9][0-9])\.([0-9]|1?[0-9][0-9]|2[0-9][0-9])\.([0-9]|1?[0-9][0-9]|2[0-9][0-9])\b/)
	ips = arr.map do |subarray|
		subarray.join(".")
	end
	return ips
	# string.scan(/[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]/)
end

def valid_mit_ip_addresses(string)
	string.scan(/18\.[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]\.[0-2]?[0-9]?[0-9]/)
end

def non_mit_ip_addresses(string)
	all = valid_ip_addresses(string)
	mit = valid_mit_ip_addresses(string)
	return all - mit
end 

def valid_phone_numbers(string)
	string.scan(/((1-)([2-9][0-9][0-9])-([2-9][1-9][1-9])-(\d{4}))/)
	return "#{string[0]}#{string[1]}#{string[2]}"

	# string.scan(/1-[2-9][0-9][0-9]-[2-9][1-9][1-9]-\d{4}|[2-9][0-9][0-9]-[2-9][1-9][1-9]-\d{4}|[2-9][1-9][1-9]-\d{4}/)
end

def area_codes(string)
	string.scan(/1-([2-9][0-9][0-9])-[2-9][1-9][1-9]-\d{4}|([2-9][0-9][0-9])-[2-9][1-9][1-9]-\d{4}|[2-9][1-9][1-9]-\d{4}/).flatten.compact
end

def email_addresses(string)
	string.scan(/[a-z0-9A-Z_-]+@[a-z0-9A-Z_-]+.[a-z]{3}/)
end

def zip_codes(string)
	string.scan(/\b\d{5}\b/)
end

def hex_colors(string)
	string.scan(/#([0-9a-fA-F]{6}\b)/).flatten
end

p valid_ip_addresses(@source_text)
p valid_mit_ip_addresses(@source_text)
p non_mit_ip_addresses(@source_text)
p email_addresses(@source_text)
p valid_phone_numbers(@source_text)
p area_codes(@source_text)
p zip_codes(@source_text)
p hex_colors(@source_text)


