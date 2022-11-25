# Incluyendo la clase Vehiculo::Motor en el modulo Parking
module Parking

    #Definiendo clase Data que contiene a los datos de un aparcamiento
    class Data

    include Enumerable
        # Getters de atributos de clase
        attr_reader :accessibility, :security, :id, :name, :desc, :type, :n_freespots, :n_spots, :oc_spots, :distance_center, :n_minspots, :min_spots, :ppm,:vehicles,  :h_in, :h_out

        ##Constructor de los datos de un aparcamientos
        def initialize(id, name, desc, type, n_spots, accessibility, security, spots, min_spots, n_minspots, ppm, distance_center, vehicles, h_in, h_out) #
          
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
                @n_freespots = n_spots
                occupiedSpots 
            else 
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end

            #spots dimensions
            if (spots.is_a? Array) then
                @spots = spots
            else
                raise Exception.new "Wrong Argument: it has to be an Array"
            end
            
            #
            #   P9
            #
              # min_spots stores dimensions of a minusvalid parkingspot
            if (min_spots.is_a? Array) then
                @min_spots = min_spots
            else
                raise Exception.new(ArgumentError)
            end 

            # n_minspots stores the number of minusvalid parkingspots
            if (n_minspots.is_a? Integer) then 
                @n_minspots = n_minspots
            else
                raise Exception.new(ArgumentError)
            end

            #ppm stands for the price per minute of the parking
            if (ppm.is_a? Numeric) && (ppm >= 0) then
                @ppm = ppm
            else
                raise Exception.new(ArgumentError)
            end

            #distance_center stands for the distance from the parking to the city center
            if (distance_center.is_a? Numeric) && (distance_center >= 0) then
                @distance_center = distance_center
            else
                raise Exception.new(ArgumentError)
            end

            #vehicles stores the vehicles that are parked in the parking
            if (vehicles.is_a? Array) then
                @vehicles = vehicles
            else
                raise Exception.new(ArgumentError)
            end

            if (h_in.is_a? Time) then
                @h_in = h_in
            else
                raise Exception.new(ArgumentError)
            end

            if (h_out.is_a? Time) then
                @h_out = h_out
            else
                raise Exception.new(ArgumentError)
            end
        end #end initialize

        #Calcula occupied spots
        def occupiedSpots
            @oc_spots = @n_spots - @n_freespots
        end

        # Sobrecargando método de formateo de cadena de un vehículo a motor
        def to_s    
            "#{@id} - #{@name} - #{@desc} - #{@type} - #{@n_spots} - #{@accessibility} - #{@security} - #{@spots[0]} - #{@spots[1]} - #{@spots[2]}, #{@min_spots[0]}, #{@min_spots[1]}, #{@min_spots[2]} , #{@n_minspots[3]}, #{@ppm}, #{@distance_center}, #{@vehicles}, #{@h_in}, #{@h_out}"
        end
        
        # Aparcando coche, decrementando el número de plazas libres 
        def park(vehicle)
            if(@n_freespots > 0) then
                @vehicles.push(vehicle)
                @n_freespots = @n_freespots - 1
                occupiedSpots
            else
                raise Exception.new "No free spots"
            end
        end

        #Calcula el tiempo de estancia de un vehículo
        def parking_time
            h_aux = @h_out.hour.to_f - @h_in.hour.to_f
            m_aux = @h_out.min.to_f - @h_in.min.to_f
            time = ((h_aux * 60) + m_aux).to_f

        end

        #Calcula el precio de la estancia de un vehículo
        def calc_price
            @ppm.to_f * parking_time.to_f
        end

        #Calcula el precio de la estancia de un vehículo minusválido
        def each    
            @vehicles.each { |v| yield v }
        end

    end #class Data
end #module Parking

