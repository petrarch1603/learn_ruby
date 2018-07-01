#write your code here
def translate(array)
	strings = array.split(' ')
	vowels = ['a', 'e', 'i', 'o', 'u']
	pig_result = []
	for string in strings
		if string.include?('qu')
			index = string =~ /qu/
			pig_result.push(string[index+2, string.length] + string[0,index +2] + 'ay')
		elsif vowels.include?(string[0])
			pig_result.push(string + 'ay')
		elsif string[0,2] == 'qu' || (vowels.include?(string[2]) && vowels.include?(string[3]))
			pig_result.push(string[2,string.length] + string[0,2] + 'ay')
		elsif vowels.include?(string[1])
			pig_result.push(string[1,string.length] + string[0] + 'ay')
		elsif vowels.include?(string[2])
			pig_result.push(string[2,string.length] + string[0,2] + 'ay')
		else
			pig_result.push(string[3,string.length] + string[0,3] + 'ay')
		end
	end
	return pig_result.join(' ')
end
