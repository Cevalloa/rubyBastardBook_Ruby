require "open-uri"

(1..10).each do |a_number|
	puts a_number
end
puts "\n"

puts (10.to_s + "42")

puts "\n"

remote_base_url = "http://en.wikipedia.org/wiki"
(1..3).each do |some_number|
	r_url = remote_base_url + "/" + some_number.to_s
	puts r_url
end

puts "\n"

#All together now
(2010..2014).each do |param|
	wiki_url = remote_base_url + "/" + param.to_s
	rpage = open(wiki_url).read
	file = open(param.to_s + ".html", "w")
	file.write(rpage)
	file.close
end

compiled_file = open("start_year-end_year.html", "w")

(2010..2014).each do |param|
k1 = open(param.to_s + ".html", "r")
compiled_file.write(k1.read)
k1.close
end

compiled_file.close