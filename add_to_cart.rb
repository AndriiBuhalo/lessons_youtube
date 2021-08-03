require_relative "init"
<<<<<<< HEAD
cart = Cart.new
ARGV.each do |a| # масив які містить всі аргументи передані в командній строці
    @items.each {|i| cart.add_item(i) if a == i.name}
end
p cart.items
=======
cart = Cart.new(ARGV.delete_at(0))
ARGV.each do |a| # масив які містить всі аргументи передані в командній строці
    @items.each {|i| cart.add_item(i) if a == i.name}
end
cart.read_from_file
cart.save_to_file
>>>>>>>  lessons 28 test
