module Parking

    class Data
        #getter
        attr_reader :accessibility, :security, :id

        ##
        def initialize(id, name, desc, type, n_spots, n_freespots, accessibility, security, spots) #

            @@spots = Parking::ParkingSpot.new(spots.height, spots.lenght, spots.width)
            if (id.is_a? Integer) then 
              @id = id
            else
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end

            if (accessibility.is_a? Integer) && (accessibility >= 1 && accessibility <= 5) then
                @accessibility = accessibility
            else 
                raise Exception.new "Wrong Argument: it has to be a value between 1 and 5"
            end

            if (security.is_a? Integer) && (security >= 1 && security <= 10) then
                @security = security
            else 
                raise Exception.new "Wrong Argument: it has to be a value between 1 and 10"
            end
 

            

        end
            
    end
end

