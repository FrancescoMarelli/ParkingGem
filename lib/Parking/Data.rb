# Incluyendo la clase Vehiculo::Motor en el modulo Parking
module Parking

    #Definiendo clase Data que contiene a los datos de un aparcamiento
    class Data
        # Getters de atributos de clase
        attr_reader :accessibility, :security, :id, :name, :desc, :type, :n_freespots, :n_spots, :oc_spots

        ##Constructor de los datos de un aparcamientos
        def initialize(id, name, desc, type, n_spots, n_freespots, accessibility, security, spots) #

            # Spots almacena las dimensiones de una plaza
            @spots = Parking::ParkingSpot.new(spots.height, spots.length, spots.width)
            
            # id is the id number of the parking
            if !(id.is_a? Integer) then 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            else
                @id = id
            end

            # accessibility is an attribute that indicate the degree of accessibility to the parking from 1 to 5
            if (accessibility.is_a? Integer) && (accessibility >= 1 && accessibility <= 5) then
                @accessibility = accessibility
            else 
                raise Exception.new "Wrong Argument: it has to be a value between 1 and 5"
            end
            # security stands for the degree of security of the parking from 1 - 10 (steals, broken cars etc)
            if (security.is_a? Integer) && (security >= 1 && security <= 10) then
                @security = security
            else 
                raise Exception.new "Wrong Argument: it has to be a value between 1 and 10"
            end

            # this is the official name of the parking lot
            if (name.is_a? String) then
                @name = name
            else 
                raise Exception.new "Wrong Argument: it has to be a String"
            end

            if (desc.is_a? String) || (desc == ('Cubierto' || 'Aire libre' || 'Mixto')) then
                     @desc = desc
           else
               raise Exception.new "Wrong Argument: Possible arguments are Cubierto, Aire libre, Mixto"
           end

           
           if (type.is_a? String) ||  (type  == ('autobuses' || 'bicicletas' || 'coches' || 'motos')) then
                     @type = type
            else
                    raise Exception.new "Wrong Argument: Possible arguments are: autobuses, bicicletas, coches, motos "
            end

            #n_spots stands for the total number of spots in the parking
            if (n_spots.is_a? Integer) && (n_spots >= 0) then
                @n_spots = n_spots
                @oc_spots = n_spots 
            else 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end

            #n_freespots stands for the number of freespots in the parking lot
            if (n_freespots.is_a? Integer) && (n_freespots >= 0) then
                @n_freespots = n_freespots
            else 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end
            # this calculate how many occupied spots there are in the parking
            occupiedSpots
        end
        #Calcula occupied spots
        def occupiedSpots
            @oc_spots = @n_spots - @n_freespots
        end
        # Sobrecargando método de formateo de cadena de un vehículo a motor
        def to_s    
            "#{@id} - #{@name} - #{@desc} - #{@type} - #{@n_spots} - #{@n_freespots} - #{@accessibility} - #{@security} - #{@spots.height} - #{@spots.length} - #{@spots.width}"
        end
            
    end
end

