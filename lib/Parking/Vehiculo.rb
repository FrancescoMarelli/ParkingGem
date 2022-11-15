module Parking

class Vehiculo
    attr_reader :id, :height, :length, :width, :weight

    def initialize(id, height, length, width, weight)
      if(id.is_a? Integer) then
         @id = id
     else
            raise Exception.new(ArgumentError)
        end

        if (height.is_a? Numeric) then 
             @height = height
        else
            raise Exception.new (ArgumentError)
        end

        @length = length
        @width = width
        @weight = weight        
    end


end

end

