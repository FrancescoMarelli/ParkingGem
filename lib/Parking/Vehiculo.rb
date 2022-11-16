module Parking

    class Vehiculo
        attr_reader :id, :height, :width, :length, :weight, :n_instances

        @@n_instances = 0
    
        def initialize(id, height, width, length, weight)
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

            n_instances
        end

        def to_s
            "Vehicle id number: #{@id}, #{@height} m high, #{@length} m long, #{@width} m wide and #{@weight} tons"
        end
        
        def n_instances
                @@n_instances += 1 
        end

        def volumen
            @height * @length * @width
        end

        def <=>(other)
            @volumen <=> other.volumen
        end
        
    
    end
    
end
    
    