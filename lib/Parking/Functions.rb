module Parking
    IS_COMPLETE = "Parking is already full"
    IS_FREE = "Parking still has empty spots"

    def self.status(n) # <-
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