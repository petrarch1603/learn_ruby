#write your code here
def ftoc(ftemp)
	return ((ftemp.to_i - 32) * (5.0/9)).round
end

def ctof(temp)
	return (temp * (9.0/5) + 32).round(1)
end