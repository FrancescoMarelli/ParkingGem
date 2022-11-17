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

            if (n_spots.is_a? Integer) && (n_spots >= 0) then
                @n_spots = n_spots
                @oc_spots = n_spots 
            else 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end

            if (n_freespots.is_a? Integer) && (n_freespots >= 0) then
                @n_freespots = n_freespots
            else 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end

            #Calcula occupied spots
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

