module Parking

    ##
    class ParkingSpot 
        attr_reader :height, :lenght, :width
    
        def initialize(height, lenght, width)
            @@height = height
            @@lenght = lenght
            @@width = width
        end
    
    end

    class Data
        ##
        def initialize(id, name, desc, type, n_spots, n_freespots, accessibility, security, spots) #
            @@id = id
            @@name = name
            @@desc = desc
            @@type = type
    
            if (n_freespots.is_a? Numeric) && (n_freespots >= 0) then
                @n_freespots = n_freespots
            else 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end
    
            if (n_spots.is_a? Numeric) && (n_spots >= 0) then
                @n_spots = n_spots
            else 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end
    
            if (security.is_a? Numeric) && (security >= 1 && security <= 10) then
                @@security = security
            else 
                raise Exception.new "Wrong Argument: it has to be a value between 1 and 5"
            end

            if (accessibility.is_a? Numeric) && (accessibility >= 1 && accessibility <= 5) then
                @@accessibility = accessibility
            else 
                raise Exception.new "Wrong Argument: it has to be a value between 1 and 5"
            end
            @@spots = ParkingSpot.new(spots.height, spots.lenght, spots.width)
        end
    end



end

