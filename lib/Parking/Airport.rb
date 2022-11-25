module Parking

    class Airport < Data
        attr_reader :n_plantas

        #Constructor de los Airpot
        def initialize(id, name, desc, type, n_spots, accessibility, security, spots, min_spots, n_minspots, ppm, distance_center, vehicles, h_in, h_out, n_floors) #
            super(id, name, desc, type, n_spots, accessibility, security, spots, min_spots, n_minspots, ppm, distance_center, vehicles, h_in, h_out)
            if((n_floors.is_a? Integer) and(n_floors > 0)) then
                 @n_floors = n_floors
            else
                raise Exception.new "Wrong Argument: it has to be a positive Integer"
            end
        end

        def to_s
            "#{@id} - #{@name} - #{@desc} - #{@type} - #{@n_spots} - #{@accessibility} - #{@security} - #{@spots[0]} - #{@spots[1]} - #{@spots[2]}, #{@min_spots[0]}, #{@min_spots[1]}, #{@min_spots[2]} , #{@n_minspots[3]}, #{@ppm}, #{@distance_center}, #{@vehicles}, #{@h_in}, #{@h_out}, #{@n_floors}"
        end

    end #end class Airport

end #end Module Parking