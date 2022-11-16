module Parking

    class Motor < Vehiculo
        attr_reader :n_wheels, :n_seats, :cc


        def initialize(n_wheels, n_seats, cc, max_speed)
            if n_wheels.is_a? Integer then
                @n_wheels = n_wheels
            else
                raise Exception.new(ArgumentError)
            end

            if n_seats.is_a? Integer then
                @n_seats = n_seats
            else
                raise Exception.new(ArgumentError)
            end

            if cc.is_a? Numeric then
                if cc > 0 then
                  @cc = cc
                else
                    raise Exception.new(ArgumentError)
                end
            else
                raise Exception.new(ArgumentError)
            end

            if max_speed.is_a? Numeric then
                if max_speed > 0 && max_speed < 350 then
                    @max_speed = max_speed
                else
                    raise Exception.new(ArgumentError)
                end
            else
                raise Exception.new(ArgumentError)
            end

        end


    end
end