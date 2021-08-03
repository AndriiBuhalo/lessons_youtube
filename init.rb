require_relative "item_container"
require_relative "order"
require_relative "cart" # бере зані з папки cart (класси, змінні)
require_relative "item"
require_relative "virtual_item"
require_relative "real_item"


=begin
cart = Cart.new
cart.add_item(Item.new)
cart.add_item(Item.new)
cart.validate
p cart.items

cart.remove_item

p cart.items

cart.validate
=end
# test
@items = []
@items << VirtualItem.new({  :weight => 100, :price => 101, :name => "car"})
@items << RealItem.new({  :weight => 100, :price => 101, :name => "kettle"})
@items << RealItem.new({  :weight => 50, :price => 10, :name => "dishwasher"})
#item.info { |attr| puts attr}


=begin
cart = Cart.new
cart.add_item item1
cart.add_item item2
cart.remove_item 
puts cart.items.size

#p cart.items
#cart.delete_invalid_items
#p cart.items
#p Item.discount
#puts item1.tax
#cart.delete_invalid_items

order = Order.new
order.add_item item1
order.add_item item2
order.add_item item3
order.remove_item 
puts order.items.size

puts order.count_valid_items
=end

