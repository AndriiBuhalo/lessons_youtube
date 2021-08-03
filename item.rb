class Item
  attr_reader :real_price, :name # створення гетерра
  attr_writer :price #створення сеттера
  #attr_accessor :weight # створення і гетерра і сетерра

  @@discount =0.05 # змінна класу

  def self.discount # self це є метод класу
    if Time.now.month == 7
      return @@discount + 0.1
    else
      return @@discount 
    end
  end

  def initialize(options={})
    @real_price = options[:price]
    @name = options[:name]
  end
  
  def info
    #[prise, weight, name,]
    #price.to_s + "," + weight.to_s + "," + name.to_s 
    yield (price)
    yield (name)

  end

  def price
    (@real_price - @real_price*self.class.discount) + tax if @real_price 
  
  end
  def to_s
    "#{self.name}:#{self.price}:#{self.weight}"

  end

  private
      def tax
        type_tax =if self.class ==VirtualItem
          1
        else
          2
        end
        cost_tax = if @real_price >5
          @real_price*0.2
        else
          @real_price*0.1
        end
        cost_tax + type_tax
      end
    

end
    
