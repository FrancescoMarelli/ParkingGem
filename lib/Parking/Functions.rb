# Incluyendo la clase de Funcionalidades en el modulo Parking

module Parking
    #Constante si el parking está lleno
    IS_COMPLETE = "Parking is already full" 
    #Constante si el parking está libre
    IS_FREE = "Parking still has empty spots" 

    #Clase Functions con función de status
    class Functions 
        

        #Getter status
        attr_reader :status
        
        #Constructor
        def initialize(d)
            if (d.is_a? Parking::Data) then
                @data = d
            else
                raise Exception.new "Wrong Argument: it has to be a Parking::Data"
            end
        end

        # Método que devuelve si parking está libre o no
        def status # <- this is a class method
            if (@data.n_freespots <= @data.n_spots) then
                 @status = IS_FREE
            elsif (@data.n_freespots == 0)    
                @status = IS_COMPLETE
            else
                 raise Exception.new "Error in the status method"
            end
        end

        #Metodo que averigua si parking cumple con numero de plazas minusvalido minimas
        def is_good_for_disabled?
            if (@data.vehicles.is_a? Enumerable) then
                if (@data.vehicles.is_a? Array) then
                    isok = @data.count / 40
                    isok >= @data.n_minspots
                end
            else
                return false
            end
        end

        #Metodo que determina si numero de plazas minusvalidos libre de un aparcamiento
        def free_spots_for_disabled
            if(@data.n_minspots > 0) then
                @data.n_minspots
            else
                return 0
            end
        end

        #Método que calcula numero total de vehiculos estacionados
        def total_vehicles
            @data.vehicles.size
        end

    end # end of class Functions

end # end of module Parking