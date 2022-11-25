RSpec.describe Parking do

    before :all do
  
      #Objetos P9
      #Arrays 
      #             length, width, height  side_space
      @parking_spot = [1.0,   2.8,   1.9]
      @min_spots =    [5  ,     2,    2,   1.5]
      @vehicles = [@v3]
      @time1 = Time.new(2022, 11, 25, 10, 10, 10, "+01:00")
      @time2 = Time.new(2022, 11, 25, 12, 40, 10, "+01:00")
  
      #Variables parameters
      @price_x_minute = 0.50
      @distance_center = 14.5
  
      #Practica 9
      @airport = Parking::Airport.new(001, 'Suarez', 'Cubierto', 'motos', 4, 5, 6, @parking_spot, @min_spots, 2, @price_x_minute, @distance_center, @vehicles, @time1, @time2,2)
      @train_station = Parking::TrainStation.new(001, 'Suarez', 'Cubierto', 'motos', 4, 5, 6, @parking_spot, @min_spots, 2, @price_x_minute, @distance_center, @vehicles, @time1, @time2,1)
  
      #Objetos Practica anterior
      @p = Parking::Data.new(001,'Suarez', 'Cubierto', 'motos', 4, 5, 6, @parking_spot, @min_spots, 2, @price_x_minute, @distance_center, @vehicles, @time1, @time2)
      @q = Parking::Data.new(002, 'Cristo Diaz', 'Aire libre', 'coches', 50, 3, 10, @parking_spot, @min_spots, 0, @price_x_minute, @distance_center, @vehicles, @time1, @time2)
      @status = Parking::Functions.new(@p)
      @statusp2 = Parking::Functions.new(@q)
  
      #Objetos p8
      # Creando 3 instancias de vehículo
      @v = Parking::Vehiculo.new(001, 2.7, 1.4, 3.2, 23.8)
      @v2 = Parking::Vehiculo.new(002, 1.2, 1.4, 3.2, 28.8)
      @v3   = Parking::Vehiculo.new(003, 1.2, 1.4, 3.2, 28.8)
  
      #Creando 3 instancia de tipo vehiculo a motor
      @m = Parking::Motor.new(2, 2, 125, 120)
      @m2 = Parking::Motor.new(4, 5, 250, 130)
      @m3 = Parking::Motor.new(4, 5, 500, 160)
      @m4 = Parking::Motor.new(4, 5, 500, 160)
  
    end

      it "Tiene un número de version: #{Parking::VERSION}" do
        expect(Parking::VERSION).not_to be nil
      end
  
  #
  #     
  #    EXPECTATIVAS DE LA GEMA APARCAMIENTO
  #
  #

        context "Representación de los Datos de un Aparcamiento - Parking::Data" do
           context "Atributos de la clase Parking::Data" do
            context "Tiene una clase para almacenar los datos del aparcamiento" do

              it "Tiene un atributo para representar el conjunto de plazas minusvalidos del aparcamiento (altura, longitud, anchura)" do
                for i in 0..@min_spots.length-1
                    expect((@min_spots[i]).is_a? Numeric).to eq(true)
                end
                expect((@min_spots).is_a? Array).to eq(true)
            end
  
              it "Tiene un método para obtener un a cadena con la información del aparcamiento correctamente formateada" do 
                
                expect(@p.to_s).to eq("1 - Suarez - Cubierto - motos - 4 - 5 - 6 - 1.0 - 2.8 - 1.9, 5, 2, 2 , 0, 0.5, 14.5, [nil], 2022-11-25 10:10:10 +0100, 2022-11-25 12:40:10 +0100")
                expect(@p.to_s).not_to eq("3 - Suarez - Cubierto - motos - 4 - 5 - 6 - 1.0 - 2.8 - 1.9")
                expect(@p.to_s).is_a? String
                expect(@p.to_s).not_to eq(nil)
              
              end
             #
             #  Atributos Clase Data P9
             #
  
             it "Tiene un atributo para representar el conjunto de plazas minusvalidos del aparcamiento (altura, longitud, anchura, distancia pared)" do
              for i in 0..@min_spots.length-1
                expect((@min_spots[i]).is_a? Numeric).to eq(true)
              end
              expect(@min_spots[0]).to eq(5)
              expect(@min_spots[1] >= 2).to eq(true)
              expect(@min_spots[2]).to eq(2)
              expect(@min_spots[3] >= 1.5).to eq(true)
             end
  
             it "Tiene un atributo para representar el numero de plazas de minusvalidos" do
              expect(@p.n_minspots).to eq(2)
              expect((@p.n_minspots).is_a? Integer).to eq(true)
              expect(@p.n_minspots).not_to eq(0)
              expect(@p.n_minspots < 0).not_to eq(true)
             end
  
             it "Tiene un atributo para representar el precio per minuto del aparcamiento" do
              expect(@p.ppm).to eq(0.5)
              expect((@p.ppm).is_a? Numeric).to eq(true)
              expect(@p.ppm).not_to eq(0)
              expect(@p.ppm < 0).not_to eq(true)
             end
  
             it "Tiene un atributo para representar la distancia del aparcamiento al centro de la ciudad" do
              expect((@p.distance_center).is_a? Numeric).to eq(true)
              expect(@p.distance_center).not_to eq(0)
              expect(@p.distance_center < 0).not_to eq(true)
              expect(@p.distance_center).to eq(14.5)
             end
  
             #
             # P9
             #
             context "Funciones de la clase Data" do
              it "Tiene un método que permite aparcar a un vehiulo" do
                expect(@p.park(@v)).to eq(1)
                expect(@p.vehicles.length).to eq(2)
                expect(@p.park(@v2)).to eq(2)
                expect(@p.park(@v)).to eq(3)
                expect(@airport.vehicles.length).to eq(4)
              end
  
              it "Tiene un método que permite calcular el tiempo de estancia un vehiculo" do
                expect(@p.parking_time).to eq(150.0)
                expect((@p.parking_time).is_a? Numeric).to eq(true)
              end
  
              it "Tiene un método que permite calcular el precio de estancia de un vehiculo" do
                expect(@p.calc_price).to eq(75)
                expect((@p.calc_price).is_a? Numeric).to eq(true)
              end
  
              it "Tiene unos métodos de Enumerable" do
                expect(@p.is_a? Enumerable).to eq(true)
                expect(@p.count).to eq(4)
                expect(@p.all? { |v| v.is_a? Parking::Vehiculo or Parking::Motor}).to eq(true)
                expect(@p.include?(@v)).to eq(true)
                expect(@airport.member?(@v3)).to eq(true)
                expect(@airport.find { |v| v.is_a? Parking::Vehiculo}).to eq(@v)
              end
             end #end context Funciones data
            end #end Tiene una clase para  almacenar datos de Aparcamiento
  
            context "Herencia de la clase Parking::Data" do
              #
              #   P9
              #
              it "Creación clase Airport, heredada de Data " do
                expect(@airport).is_a? Parking::Airport
                expect(@airport).instance_of? Parking::Airport
                expect(@airport).kind_of? Parking::Airport
                expect(@airport.class.superclass).to eq(Parking::Data)
                expect(@airport.class.superclass.superclass).to eq(Object)
              end
  
              it "Creación clase TrainStation, heredada de Data " do
                expect(@train_station).is_a? Parking::TrainStation
                expect(@train_station).instance_of? Parking::TrainStation
                expect(@train_station).kind_of? Parking::TrainStation
                expect(@train_station.class.superclass).to eq(Parking::Data)
                expect(Parking::TrainStation.superclass.superclass).to eq(Object)
              end
  
  
            end   #end context Herencia de la clase Parking::Data
  
          end #end describe Parking::Data
        end #end describe Parking
  
        context "Interfaz de las funcionalidades - Parking::Functions" do

          #
          # P9
          #
  
          it "Existe un método que averigue si el aparcamiento cumple con las plazas minusvalidos minima" do
            expect(@statusp2.is_good_for_disabled?).to eq(true)
            expect(@status.is_good_for_disabled?).to eq(false)
          end
  
          it "Existe un método que calcula cuantos vehiculos están aparcados en un parking" do
            expect(@status.total_vehicles).to eq(4)
          end
  
          it "Existe un método que calcula las plazas minusvalidas libres" do
            expect(@status.free_spots_for_disabled).to eq(2)
          end
  
        end #end context funcionalidades
  
end
  