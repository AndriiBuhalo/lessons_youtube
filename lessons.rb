#lesson_1 первая програма
# ___________________________________________________________________________________________________________________
#  puts "Hello World"
# ___________________________________________________________________________________________________________________
#lessons_2 строки і числа
# ___________________________________________________________________________________________________________________
=begin
puts "it is a string"
puts 1+2
puts "1" +"2"
=end
# ___________________________________________________________________________________________________________________
#lessons_3 перемінні
# ___________________________________________________________________________________________________________________
=begin
first_name = "James"
last_name = "Bond"
puts "My name is " + last_name
puts first_name + " " + last_name
=end
# ___________________________________________________________________________________________________________________
# lessons_4 оператори часть 1
# ___________________________________________________________________________________________________________________
=begin
name = "James"
puts 1+2
a = 2*3
puts a
puts 1==2
puts 1<=2
puts 3>=1
=end
# ___________________________________________________________________________________________________________________
# lessons_5 оператори часть 2
# ___________________________________________________________________________________________________________________
=begin
puts (1<2) && (3>2)
puts (1==2)||(1!=2)
puts 1==2  ||  1!=2
=end
# ___________________________________________________________________________________________________________________
# lessons _6 условниє виражения часть 1
# ___________________________________________________________________________________________________________________
=begin
if 2>1
    puts "hello world"
end
name ="James"
if name =="Jame" && (2>1)
    puts "My name is Bond "
end
if name =="James" || (2>1)
    puts "My name is Bond. #{name}  Bond "
end
# unless оператор обернений до оператора if
unless name =="Jame" && (2>1)
    puts "My name is unless "
end
=end
# ___________________________________________________________________________________________________________________
# lessons_7 условниє виражения часть 2
# ___________________________________________________________________________________________________________________
=begin
i = 1 
if i >=1
    puts "number is greater then or equals 1"
elsif i<=1
    puts "number is less then or equals 1"
else 
    puts "number is equal  1"
end
puts "-------------------------------"

if i >=1
    puts "number is greater then or equals 1"
end

if i <=1
    puts "number is less then or equals 1"
end
=end
# ___________________________________________________________________________________________________________________
# lessons_8 цикл while
# ___________________________________________________________________________________________________________________
=begin
if ARGV[0]
    a = ARGV[0].to_i
else 
    a = 1 
end

a = if ARGV[0]
    ARGV[0].to_i
    else 
    1
end
while a < 10
    a += 1
    puts "'a' varible is " + a.to_s
    sleep 1;
end
=end
# ___________________________________________________________________________________________________________________
# lessons_9 методи часть 1
# ___________________________________________________________________________________________________________________
=begin
def hello_world (name)
    puts "Helo World"
    puts "my name is " + name
end

hello_world ("Andriu")
hello_world ("Anton")
=end
# ___________________________________________________________________________________________________________________
# lessons_10 методи часть 2
# ___________________________________________________________________________________________________________________
=begin
def hello_world (first_name = "", family_name="")
    puts "Hello World"
   if first_name !="" && family_name != ""
        puts "My name is " + first_name + " " + family_name
   end
end
hello_world
hello_world("Andriu" , "Bugugu")
hello_world("Anton" )
=end
# ___________________________________________________________________________________________________________________
# lessons_11 методи часть 3
# ___________________________________________________________________________________________________________________
=begin
def hello_world (first_name = "", family_name="")
    gretting = "Hello World.\n "
    unless first_name =="" && family_name == ""
        gretting += "My name is " + first_name + " " + family_name
   end
return gretting
end
 
puts hello_world("Anton", "Petriv")
=end
# ___________________________________________________________________________________________________________________
# lessons_12 обєкти і класи
# ___________________________________________________________________________________________________________________
=begin
class Items # клас

    def price
    rand(100)
    end
end
item1 = Items.new    #метод класу обєкт
item2 = Items.new
puts item1.price
puts item2.price;
=end
# ___________________________________________________________________________________________________________________
# lessons_13 свойства, геттери і сеттери
# ___________________________________________________________________________________________________________________
=begin
class Items
  def initialize
    @price = 30
  end

  def price
    @price
  end

  def price=(price_value)
    @price = price_value
  end

end
item1 = Items.new
puts item1.price
item1.price=(10)
puts item1.price
item1.price=20
puts item1.price
=end
# ___________________________________________________________________________________________________________________
# lessons_14 спеціальні методи класа (attribute, readers, writers, and accessors
# ___________________________________________________________________________________________________________________
=begin
class Items
    
    def initialize
      @price = 30
      @weight = @price +20
    end
    attr_reader :price # створення гетерра
    attr_writer :price #створення сеттера
    attr_accessor :weight # створення і гетерра і сетерра
end
  item1 = Items.new
  puts item1.price
  item1.price=(10)
  puts item1.price
  puts item1.weight
=end 
=begin
    def price # створення гетерра
      @price
    end
    def price=(price_value) # створення сеттера
      @price = price_value
    end

    def weigth
        @weigth
      end
      def weigth=(weigth_value)
        @weigth = weigth_value
      end
=end 

# ___________________________________________________________________________________________________________________
# lessons_15 символи, хеши, і встановлення властивостей
# ___________________________________________________________________________________________________________________
=begin

:babay #символ. і символ це(:) 
"babay" # строка
# хеш структура для зберігання даних
alo = { :name=>"Антон", :family=>"Бойки" }
puts alo[:name]
#p alo
class Items
    
    def initialize(options)
      @price = options[:price]
      @weight = options[:weight]
    end
    attr_reader :price # створення гетерра
    attr_writer :price #створення сеттера
    attr_accessor :weight # створення і гетерра і сетерра
end


  item1 = Items.new({ :weight =>10, :price=>30}) 
  puts item1.price
  puts item1.weight
  a = 1
=end

# ___________________________________________________________________________________________________________________
# lessons_16  все  являється обєктом
# ___________________________________________________________________________________________________________________
=begin
puts "ruby".capitalize
puts 1.next

r = "pasta"
puts r.capitalize
puts r
names = {:family_name =>"Bond", :first_name => "Jame" }
puts names.length
puts "------------------------------------------------"

class Items
    
  def initialize(options)
    @price = options[:price]
    @weight = options[:weight]
  end
  attr_reader :price # створення гетерра
  attr_writer :price #створення сеттера
  attr_accessor :weight # створення і гетерра і сетерра
end


 puts Items.new({:price => 30 }).price 
=end

 # ___________________________________________________________________________________________________________________
# lessons_17  масиви
# ___________________________________________________________________________________________________________________
=begin
name = ["Bob", "James", "John"]
name.push "Roman"
p name

name.pop #видаляє останній елемент масиву
p name

name.shift # видаляє перший елемент масиву
p name
=end
=begin
class Cart 
attr_reader :items
def initialize
@items = Array.new

end

def add_item(item) 
@items = push item # добавляє до масиву значення


end

def remove_item 
  @item = pop  # звбирає з масиву значення
end

def validate
    @items.each { |i| puts "Items has no price" if i.price.nil? }    # це блок який виведе на екран значення якщо в значенні і ціни не вказана
    end
end

=end

# ___________________________________________________________________________________________________________________
# lessons_18  Блоки частина 1
# ___________________________________________________________________________________________________________________
=begin
names = ["Bob", "John", "James"]
names.each { |name| puts name } # name зміна яку ми назвали аби до неї звертатися і наприклад вивести на екран(кусочок коду закріплених в цих дужках і буде виконуватися для кожного елемента масиву)
=end

# ___________________________________________________________________________________________________________________
# lessons_19  Блоки частина 2
# ___________________________________________________________________________________________________________________
=begin
names = ["Bob", "John", "James"]
names.each { |name| puts name } # name зміна яку ми назвали аби до неї звертатися і наприклад вивести на екран(кусочок коду закріплених в цих дужках і буде виконуватися для кожного елемента масиву)
=end

# ___________________________________________________________________________________________________________________
# lessons_20  Блоки частина 3
# ___________________________________________________________________________________________________________________
#a = 10
#a.times { puts "hello world"}
=begin
james_bond = {:first_name => "James", :middle_name => "Robert", :last_name => "Bond"} #хеш 
james_bond.each_key {|key| puts key} # в даному випадку {} ці скобкки означають блок а в попередньому разі вони означають гранию хеша

File.open("/tmp/blocks.txt", "w") { |f| f.puts "hello world" } # створює папку bloks  і записує в неї значення hello world
=end


# ___________________________________________________________________________________________________________________
# lessons_21  Наследия і поліморфізм дві із 3(інкапсуляція) в ООП
# ___________________________________________________________________________________________________________________

# ___________________________________________________________________________________________________________________
#p "cat" =~/c.t/
#p 1+2
#p "1".to_s
#p "Oleg and Vasa".match(/Vasa/)# значення єале не ніл
#p "Oleg and Vasa".match(/vasa/)# ніл
#p "Oleg and Vasa"=~ (/Vasa/)#аналогічно як в рядку 353
#p "Oleg and Vasa".index("Vasa")#
#p "cat" =~/c.t/ # . в с.t означає що дозволено 1 символ в пошуку
#p "scute" =~/^c.t/ # ^  знак означає 1 символ на рядку має бути "c"
#p "cuts" =~ /^c.t/
#p "cut" =~ /^c.t$/ # $ знак означає останню буква має бути "t"
#p "catanddort" =~/^c.*t$/ # * знак що означає не обмежану кількість раз вкористання знаку в даному випадку (.). Цей знак кладеться перед знаком який може не обмежуватися в ікількості приклад
#p "cattttt" =~ /^c.t*$/ #  необмежанне кількість (t) 
#p "12345" =~/^[12345]*$/ #[]  означає зо в кавичках мають повторятися не обмежано кількість раз але бути в контексті
#p "12345" =~/[12433]*/ # без знаків ^ i $ даний []  працювати буде не коректно( хоч в прикладі не вірно а в результаті він показує вірно)
#p "9876543210" =~/^[0-9]*$/ 


# ___________________________________________________________________________________________________________________

# ___________________________________________________________________________________________________________________
# lessons_22  методи і перемінні класу
# ___________________________________________________________________________________________________________________


 #@@discount =0.1 # змінна класу вона доступна і для методів в класі також

# ___________________________________________________________________________________________________________________
# lessons_23  публічні і приватні методи
# ___________________________________________________________________________________________________________________

# private  в класі можна створити приватні методи які відкриті лише в середині даного класу і тільки там можна їхвикликати

# ___________________________________________________________________________________________________________________
# lessons_24  модулі
# ___________________________________________________________________________________________________________________
# модулі створуюється нова папка і назвивається module (назва модуля) і всі спільні методи в класах додати до модуля . В класах де є спільні методи пишемо include ( назва модуля). 
# також добавляємо require_relative "item_container" в виконавче а також назву модуля.
# В загальному моуль для того аби смільні методи запхати в одне місце яке буде спільним дл всього

# ___________________________________________________________________________________________________________________
# lessons_25  вложених модулі і класи
# ___________________________________________________________________________________________________________________
# в модуях так як і в класі можна робити підклас це дасть розділити клас і згрупувати його методи по певних параметрах
#  аби зробити підклас або в модулі підмодуль створюєм в монулі новий модуль а посилання на нього даєм ( include ItemContainer::Manager)

# ___________________________________________________________________________________________________________________
# lessons_26  коллбек на инклуд модулях
# ___________________________________________________________________________________________________________________

=begin
застосування патрн для того аби викликати підмодулі а також це колбек для інклудення модуля в класіі розбиття модуля на менші модулі
def self.included(base) # патрн який дозволяє викликати модуль в класах і не треба викликати кожен окремо підмоуль. метод назвивається колбеком викликається завжди кои ми інклудим на модуль в будь якому класі
    base.extend(ClassMethods)
    base.class_eval do
        include InstanceMethods
        end
    end

=end

# ___________________________________________________________________________________________________________________
# lessons_27  аргументи  із командної строки
# ___________________________________________________________________________________________________________________
=begin
ARGV.each do |a| # масив які містить всі аргументи передані в командній строці
  @items.each {|i| cart.add_item(i) if a == i.name}
end
p cart.items
=end

___________________________________________________________________________________________________________________
# lessons_28  запис і читання файлів
# ___________________________________________________________________________________________________________________
