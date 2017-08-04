require_relative 'TodoList'

describe TodoList do
  let(:todolist) { TodoList.new(["do the dishes", "mow the lawn"]) }

  it "stores the list items given on initialization" do
    expect(todolist.get_items).to eq ["do the dishes", "mow the lawn"]
  end

  it "adds an item to the list" do
    list.add_item("mop")
    expect(todolist.get_items).to eq ["do the dishes", "mow the lawn", "mop"]
  end

  it "deletes an item" do
    list.delete_item("do the dishes")
    expect(todolist.get_items).to eq ["mow the lawn"]
  end

  it "retrieves an item by index" do
    expect(todolist.get_item(0)).to eq "do the dishes"
  end
end
