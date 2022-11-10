module Parking ##

    class ParkingSpot 
        attr_reader :height, :lenght, :width
        def initialize(height, lenght, width)
            @@height = height
            @@lenght = lenght
            @@width = width
        end
    end
end