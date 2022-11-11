#Module Parking includes two constants and a status function
module Parking
    #Constants
    IS_COMPLETE = "Parking is already full"             #constant if parking is full
    IS_FREE = "Parking still has empty spots"           #constant if parking has still free spots

    #self.status can calculate if the status of the parking is free or full
    def self.status(n) 
        if (n.is_a? Numeric) && (n >= 0) then
            if(n > 0) then
                 @status = IS_FREE
            else
                @status = IS_COMPLETE
            end
        else 
            raise Exception.new "Argument is incorrect"
        end
    end

end