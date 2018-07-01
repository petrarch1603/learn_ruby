class Book
	def title
		@title
	end

	def title=(title)
		@title = titilize(title)
	end

	def titilize(title)
		articles = ['and', 'the', 'of', 'an', 'a', 'to', 'in', 'at' ]
		result_title = []
		title = title.split(' ')
		title[0] = title[0].capitalize
		for word in title do
			if !articles.include?(word)
				result_title.push(word.capitalize)
			else
				result_title.push(word)
			end
		end
		result_title.join(' ')
	end
end