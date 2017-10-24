





# Story: As a programmer, I can make a vehicle.

class Vehicle
    attr_accessor :model, :model_year, :lights, :wheels, :left_signal, :right_signal, :speed
    def initialize(model, model_year, left_signal=false,right_signal=false,lights=false, wheels=4, speed = 0)
        @left_signal = left_signal
        @right_signal = right_signal
        @lights = lights
        @wheels = wheels
        @model = model
        @model_year = model_year
        @speed = speed
        p "this is a new #{@model}"
    end

    def lights_switch
        @lights = !(@lights)
    end

# As a programmer, I can turn on and off the lights on a given Vehicle
end

#Story: As a programmer, I can make a car.

class Car < Vehicle
    def speed_up(num)
        @speed = speed + num
    end

    def brake(x)
        @speed -= x
    end

    def car_info
        puts ("this is all the info: The left signal is #{@left_signal}, the right signal is #{@right_signal}, the lights are #{@lights} it has #{@wheels} wheels, The model is a #{@model}, it's a #{@model_year} and it's only going #{@speed}kph!!!!!" )
    end

end

#Story: As a programmer, I can make a Tesla car.
class Tesla < Car

end
#
# my_tesla = Tesla.new("model S", 2018)
# my_tesla.wheels = (16)
# p my_tesla.speed_up(5)

#Story: As a programmer, I can make a Tata car
class Tata < Car

end

class Toyota < Car

end
# my_tata1 = Tata.new("Model Tata", 2003)
# my_tata2 = Tata.new("Model Kaka", 1970)

carArray = [my_tata1 = Tata.new("Model Tata", 2003), my_tata2 = Tata.new("Model Kaka", 1970), my_toyota1 = Toyota.new("rav4", 2016), my_toyota2 = Toyota.new("camry", 2011), my_tesla1 = Tesla.new("model S", 2018), my_tesla2 = Tesla.new("model A", 2020)]

#p carArray
p carArray.sort_by{ |model_year, model_year| model_year <=> model_year }
#Story: As a programmer, I can make a Toyota car.

#
# p my_toyota = Toyota.new("rav4", 2016)
# p my_toyota.left_signal = (true)
# p my_toyota.speed_up(5)
# p my_toyota.brake(3)
# p my_toyota.speed
# p my_tata1.speed_up(2)
# p my_tata2.brake(1.25)
# p my_tata1.car_info
