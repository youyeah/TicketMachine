require "date"

class Ticket
    
    attr_accessor :age , :price

    def initialize(age:,price:)
        self.age = age
        self.price = price
    end

    def info
        return "#{self.age}  #{self.price}円"
    end

    def treasurer(count)
        total = self.price * count
        today = Date.today

        if today.wday == 0 || today.wday == 6
            total *= 0.8
        end

        puts "---------------"
        return total.to_i
    end
    
end