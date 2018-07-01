#write your code here
def echo(str)
	return str
end

def shout(str)
	return str.upcase
end

def repeat(str, iters=2)
	return ((str + " ") * iters)[0..-2]
end

def start_of_word(str, number)
	return str[0..(number-1)]
end

def first_word(str)
	return str.split(" ")[0]
end

def titleize(str)
	little_words = ['a', 'the', 'and', 'if', 'so', 'over']
	my_title = []
	my_split = (str.split(' '))
	my_split.map do |n|
		if !little_words.include? n
			my_title.push(n.capitalize)
		else
			my_title.push(n)
		end
	end
	my_title[0] = my_title[0].capitalize
	return my_title.join(" ")
end
