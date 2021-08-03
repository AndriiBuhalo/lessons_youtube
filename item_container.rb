module ItemContainer
    module ClassMethods

        def min_price
            100 
        end
    end

    module InstanceMethods

        def add_item(item) 
            unless item.price < self.class.min_price
                @items.push item # добавляє до масиву значення
            end
        end
        
        def remove_item 
            @items.pop  # звбирає з масиву значення
        end

        def validate
            @items.each { |i| puts "Items has no price" if i.price.nil? }    # це блок який виведе на екран значення якщо в значенні і ціни не вказана
        end

        def delete_invalid_items
            @items.delete_if { |i| i.price.nil?  } 
        end

        def count_valid_items
            @items.count { |i| i.price } 
        end
    end    

    def self.included(base) # патрн який дозволяє викликати модуль в класах і не треба викликати кожен окремо підмоуль. метод назвивається колбеком викликається завжди кои ми інклудим на модуль в будь якому класі
    base.extend(ClassMethods)
    base.class_eval do
        include InstanceMethods
        end
    end


end
