class Cart 
    attr_reader :items, :owner
   
    include ItemContainer
    
    def initialize(owner)
        @items = Array.new
        @owner = owner
    end
    
    def save_to_file
        File.open("#{@owner}_cart.txt", "w") do |f|
            @items.each { |i| f.puts i.to_s} # car:100:50
        end
    end

    def read_from_file
        return unless File.exist?("#{@owner}_cart.txt")# вийдем з методу якщо нашого файлу не буде
        item_fieleds = File.readlines("#{@owner}_cart.txt") # car:100:50 \n
        item_fieleds.map! { |i| i.chomp } # car:100:50
        item_fieleds.map! { |i| i.split(":")} #["car","100", "50"]
        item_fieleds.each { |i| @items << Item.new(name: i[0], price: i[1].to_i, weight: i[2].to_i) }
        @items.uniq! # видаляє одноакові значення з масиву айтемс
    end

     

end
    