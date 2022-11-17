# Incluyendo la clase Vehiculo en el modulo Parking
module Parking

#Definiendo la clase vehículo 
    class Vehiculo
        # Incluyendo Modulo Comparable para usar operadores de comparación
        include Comparable

        #Getters atributos
        attr_reader :id, :height, :width, :length, :weight, :n_instances

        #Inicializo instancia a 0
        @@n_instances = 0
        
        # Constructor con id, altura, ancho, largo en m y peso en toneladas
        def initialize(id, height, width, length, weight)
             if(id.is_a? Integer) then
                 @id = id
            else
                raise Exception.new(ArgumentError)
            end
    
            if (height.is_a? Numeric) then 
                 @height = height
            else
                raise Exception.new (ArgumentError)
            end
            
            if(length.is_a? Numeric) then
                @length = length
            else
                raise Exception.new(ArgumentError)  
            end

            if(width.is_a? Numeric) then
                @width = width
            else
                raise Exception.new(ArgumentError)
            end

            if(weight.is_a? Numeric) then
                @weight = weight        
            else    
                raise Exception.new(ArgumentError)
            end
            @volumen = calc_volumen
            n_instances
        end

        #sobrecargando método to_s para un correcto formateo de la cadena
        def to_s
            "Vehiculo con id: #{@id}, #{@height} m de altura, #{@width} m de ancho, #{@length} m de longitud y de peso: #{@weight} t"
        end
        
        #método que incrementa las instancias de objetos que sean vehículos
        def n_instances
                @@n_instances += 1 
        end

        #metodo que calcula volumen de un vehiculo a través de los tres parametros de dimensión (x,y,z)
        def calc_volumen
            @height * @length * @width
        end

        #sobrecarga de <=> desde modulo comparable
        def <=>(other)
            @volumen <=> other.calc_volumen
        end
        
    
    end
    
end
    
    