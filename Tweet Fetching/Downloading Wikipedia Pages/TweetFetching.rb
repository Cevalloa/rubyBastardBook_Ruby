require "open-uri"

#1 read two different webpages
#2 write both to your hard drive
#3 Reopen those saved files
#4 write combined content of those files into a third file

remote_base_url = "http://en.wikipedia.org/wiki"
r1 = "Steve_Wozniak"
r2 = "Steve_Jobs"
f1 = "my_copy_of-" + r1 + ".html"
f2 = "my_copy_of-" + r2 + ".html"

#read first url 
remote_full_url = remote_base_url + "/" + r1
rpage = open(remote_full_url).read

#write the first file to disk
file = open(f1, "w")
file.write(rpage)
file.close

#read the second url
remote_full_url = remote_base_url + "/" + r2
rpage = open(remote_full_url).read

#write the second file to disk
file = open(f2, "w")
file.write(rpage)
file.close

# open a new file:
compiled_file = open("apple-guys.html", "w")

# reopen the first and second files again
k1 = open(f1, "r")
k2 = open(f2, "r")

compiled_file.write(k1.read)
compiled_file.write(k2.read)

k1.close
k2.close
compiled_file.close