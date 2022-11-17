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
            if (@data.n_freespots == @data.n_spots) then
                 @status = IS_FREE
            elsif (@data.n_freespots < @data.n_spots)    
                @status = IS_COMPLETE
            else
                 raise Exception.new "Error in the status method"
            end
        end
    end

end