module Parking

    #clase Estación de Tren heredada de Data, tendŕa un numero de plazas de larga permanencia
    class TrainStation < Data

        #getter de n_floors_long_stay
        attr_reader :n_floors_long_stay
        def initialize(id, name, desc, type, n_spots, accessibility, security, spots, min_spots, n_minspots, ppm, distance_center, vehicles, h_in, h_out, n_floors_long_stay) #
           super(id, name, desc, type, n_spots, accessibility, security, spots, min_spots, n_minspots, ppm, distance_center, vehicles, h_in, h_out)
           if((n_floors_long_stay.is_a? Integer) and (n_floors_long_stay >= 0)) then 
                @n_floors_long_stay = n_floors_long_stay
           else
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
           end
        end

        #sobrecarga método to_s
        def to_s
            "#{@id} - #{@name} - #{@desc} - #{@type} - #{@n_spots} - #{@accessibility} - #{@security} - #{@spots[0]} - #{@spots[1]} - #{@spots[2]}, #{@min_spots[0]}, #{@min_spots[1]}, #{@min_spots[2]} , #{@n_minspots[3]}, #{@ppm}, #{@distance_center}, #{@vehicles}, #{@h_in}, #{@h_out}, #{@n_floors_long_stay}"
        end
    end #end class TrainStation


end #end Module Parking