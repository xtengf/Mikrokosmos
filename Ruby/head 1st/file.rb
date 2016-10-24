def File.open(name, mode)
	file = File.new(name, mode)
	if block_given?
		yield(file)
	else
		return file
	end
end