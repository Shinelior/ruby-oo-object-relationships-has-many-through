class Customer
    require "pry"
    attr_accessor :name, :age
  
    @@all = []
  
    def initialize(name, age)
      @name = name
      @age = age
      @@all << self
    end
  
    def self.all
      @@all
    end

  def new_meal(waiter,total,tip)
    Meal.new(waiter,self,total,tip)
  end
   def meals
   Meal.all.select{|m|  m.customer == self}
    end
    def waiters
        
        meals.map{|m| 
        m.waiter
        }  
        
    end 
    def best_tipper
        all_tips = []
        Meal.all.select{|x| 
        all_tips << x.tip
    }
      max_tip =  all_tip.max
      Meal.all.find{|x|
          x.tip == max.tip 
          x.customer
      }
    end
end