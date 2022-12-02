# Incluyendo la clase de Funcionalidades en el modulo Parking
module Parking
    #Constante si el parking está lleno
    IS_COMPLETE = "Parking is already full" 
    #Constante si el parking está libre
    IS_FREE = "Parking still has empty spots" 

        # Método que devuelve si parking está libre o no
        def Parking.status(data) # <- this is a class method
           if(data.n_spots > data.vehicles.size) then
             return Parking::IS_FREE 
           else 
            return Parking::IS_COMPLETE
           end
        end

    
        #Metodo que averigua si parking cumple con numero de plazas minusvalido minimas
        def Parking.is_good_for_disabled?(data)
            if (data.vehicles.is_a? Enumerable) then
                    isok = data.count / 40
                    isok >= data.n_minspots
            else
                return false
            end
        end

        #Metodo que determina si numero de plazas minusvalidos libre de un aparcamiento
        def Parking.free_spots_for_disabled(data)
            if(data.n_minspots > 0) then
                return data.n_minspots
            else
                return -1
            end
        end

        #Método que calcula numero total de vehiculos estacionados
        def Parking.total_vehicles(data)
            data.vehicles.size
        end

end # end of module Parking