require_relative 'source'
require 'pry'

# puts @source_text



# string.scan(pattern)

def valid_ip_addresses 
end 

def valid_mit_ip_addresses 
end

def non_mit_ip_addresses 
end 

def valid_phone_numbers(string)
	string.scan(/1-[2-9][0-9][0-9]-[2-9][1-9][1-9]-\d{4}|[2-9][0-9][0-9]-[2-9][1-9][1-9]-\d{4}|[2-9][1-9][1-9]-\d{4}/)
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

p email_addresses(@source_text)
p valid_phone_numbers(@source_text)
p area_codes(@source_text)
p zip_codes(@source_text)
p hex_colors(@source_text)


