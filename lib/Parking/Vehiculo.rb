module Parking

    class Vehiculo
        attr_reader :id, :height
    
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
            
            if(length.is_a? Numeric) then
                @length = length
            else
                raise Exception.new(ArgumentError)  
            end

            if(width.is_a? Numeric) then
                @width = width
            else
                raise Exception.new(ArgumentError)
            end

            if(weight.is_a? Numeric) then
                @weight = weight        
            else    
                raise Exception.new(ArgumentError)
            end
            
        end

        def to_s
            "Vehicle id number: #{@id}, #{@height} m high, #{@length} m long, #{@width} m wide and #{@weight} tons"
        end
        
    
    end
    
end
    
    