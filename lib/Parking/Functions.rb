#Module Parking includes two constants and a status function
module Parking
    #Constants
    IS_COMPLETE = "Parking is already full"             #constant if parking is full
    IS_FREE = "Parking still has empty spots"           #constant if parking has still free spots

    class Functions 

        attr_reader :status

        def initialize(d)
            if (d.is_a? Parking::Data) then
                @data = d
            else
                raise Exception.new "Wrong Argument: it has to be a Parking::Data"
            end
        end


        def status # <- this is a class method
            if (@data.n_freespots == @data.n_spots) then
                 @status = IS_FREE
            elsif (@data.n_freespots < @data.n_spots)    
                @status = IS_COMPLETE
            else
                 raise Exception.new "Error in the status method"
            end
        end
    end

end