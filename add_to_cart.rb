require_relative "init"
cart = Cart.new('test')
ARGV.each do |a| # масив які містить всі аргументи передані в командній строці
    @items.each {|i| cart.add_item(i) if a == i.name}
end
cart.read_from_file
cart.save_to_file


