module Parking

    class Data
        #getter
        attr_reader :accessibility, :security, :id, :name, :desc, :type

        ##
        def initialize(id, name, desc, type, n_spots, n_freespots, accessibility, security, spots) #

            @spots = Parking::ParkingSpot.new(spots.height, spots.lenght, spots.width)
            if !(id.is_a? Integer) then 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            else
                @id = id
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

            if (name.is_a? String) then
                @name = name
            else 
                raise Exception.new "Wrong Argument: it has to be a String"
            end

            if (desc.is_a? String) then
                if (desc == ("Cubierto" || "Aire libre" || "Mixto")) then
                     @desc = desc
                end
           else
               raise Exception.new "Wrong Argument: Possible arguments are Cubierto, Aire libre, Mixto"
           end

           
           if (type.is_a? String) then
                if(type  == ("autobuses" || "bicicletas" || "coches" || "motos")) then
                     @type = type
                end
            else
                    raise Exception.new "Wrong Argument: Possible arguments are: autobuses, bicicletas, coches, motos "
            end

        end
            
    end
end

