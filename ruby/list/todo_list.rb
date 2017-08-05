class TodoList
  def initialize(get_items)
    @get_items = get_items
    #get_items = ["do the dishes", "mow the lawn"]
	end

  def get_items
    get_items = ["do the dishes", "mow the lawn"]
  end

  def add_item(chore)
    get_items[2] = "mop"
  end
end
