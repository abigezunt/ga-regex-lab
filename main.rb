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
	string.scan(/(1[-\/ ])?\(?([2-9][0-9][0-9])?\)?[-\/ ]?([2-9][1-9][1-9])([-\/ ])(\d{4})/)
end

def area_codes 
end

def email_addresses(string)
	string.scan(/[a-z0-9A-Z_-]+@[a-z0-9A-Z_-]+.[a-z]{3}/)
end

def zip_codes 
end

def hex_colors 
end

email_addresses = email_addresses(@source_text)
valid_phone_numbers = valid_phone_numbers(@source_text)
puts valid_phone_numbers.join(" ")
