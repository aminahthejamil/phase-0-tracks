class TodoList
	def initialize(chore1)
		@List = chore1
	end

  def get_items
    return @List
  end

  def add_item(target)
  	arrayLen = @List.length
  	@List[arrayLen] = target
  	return @List
  end

  def delete_item(target)
  	ctr = 0
  	ctr2 = 0
  	newArray = []
  	arrayLen = @List.length
  	while ctr < arrayLen
  		if target != @List[ctr]
  			newArray[ctr2] = @List[ctr]
  			ctr2 += 1
  		end
  		ctr += 1
  	end
  	@List = newArray
  	return @List
  end

  def get_item(index)
  	newArray = []
  	newArray << @List[index]
  	return newArray
  end



end
