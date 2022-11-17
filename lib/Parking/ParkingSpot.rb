# Incluyendo la clase ParkingSpot en el modulo Parking
module Parking ##

    #Definiendo la clas Parking Spot
    class ParkingSpot 
        #Getter de altura, ancho, largo de una plaza de aparcamiento
        attr_reader :height, :length, :width
        
        #Constructor de un plaza de aparcamiento: 3 atributos (Altura, Largo, Ancho)
        def initialize(height, length, width)
            if (height.is_a? Numeric) && (height >= 0 )then
                 @height = height
             else 
                Exception.new "Wrong Argument: it has to be a positive Numeric"     
             end

             if(length.is_a? Numeric) && (length >= 0) then
                 @length = length
             else 
                Exception.new "Wrong Argument: it has to be a positive Numeric"   
             end

            if(width.is_a? Numeric) && (width >= 0) then
                 @width = width
             else 
                Exception.new "Wrong Argument: it has to be a positive Numeric"   
             end  
        end     
    end
end