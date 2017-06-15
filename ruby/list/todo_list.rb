class TodoList
  attr_accessor :items

  def initialize(arr)
    @items = arr
  end

  def add_item(item)
    @items.push(item)
  end

  def delete_item(item)
    @items.delete(item)
    @items
  end

  def get_item(index)
    @items[index]
  end
end

