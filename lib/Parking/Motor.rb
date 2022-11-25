#
# Incluyendo la clase Vehiculo::Motor en el modulo Parking
module Parking
#
# Clase Vehiculo a Motor heredada de Vehiculo
    class Motor < Vehiculo
# Incluyendo el Modulo Comparable para sobrecargar <=>
    include Comparable
    #Getters
        attr_reader :n_wheels, :n_seats, :cc, :max_speed

#
#   Constructor de Motor, con parametros = Numero de Ruedas, Numero de asientos, Potencia en cm³ y velocidad máxima
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
#
#   Sobrecargando método de formateo de cadena de un vehículo a motor
        def to_s
            "Vehículo de motor con #{@n_wheels} ruedas, #{@n_seats} asientos, #{@cc} cm^3 de motor y #{@max_speed} km/h como velocidad máxima"
        end
#
#   Operador de comparación sobrecargado
        def <=>(other)
            @n_seats <=> other.n_seats
        end

    end # end of class Motor
end # end of module Parking