# створення нового класу для реальних речей
class RealItem < Item

    attr_reader :weight # створення і гетерра і сетерра
    def initialize (options)
        @weight = options[:weight]
        super
    end

    def info
        yield (weight)
        super
    end
end