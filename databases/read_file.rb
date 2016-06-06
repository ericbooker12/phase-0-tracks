file_to_write = File.new("/Users/ericbooker/DBC/phase-0-tracks/databases/file.txt")
f = File.new("/Users/ericbooker/DBC/phase-0-tracks/databases/depth.txt")



f.rewind
file_rows = f.readlines

count = 0
while count < 5 do 
	puts file_rows[count]
	count += 1
	
end



