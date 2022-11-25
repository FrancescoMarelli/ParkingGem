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

#
#
#  EXPECTATIVAS DE LA CLASE VEHICULO
#
#
    it "Tiene un número de version: #{Parking::VERSION}" do
      expect(Parking::VERSION).not_to be nil
    end

  context "Representación de un Vehiculo - Parking::Vehiculo" do

        context "Atributos de la clase Vehiculo" do

          it "Tiene una clase para representar vehículos" do
            expect(Parking::Vehiculo).to be_a(Class)
            expect(Parking::Vehiculo).to be_a_kind_of Class
            expect(Parking::Vehiculo).to be_an_instance_of(Class)
            expect(Parking::Vehiculo).instance_of?(Class)
            expect(Parking::Vehiculo.ancestors).to eq([Parking::Vehiculo,Comparable, Object, Kernel, BasicObject])
          end

          it "Tiene un atributo para identificar al vehículo" do
            expect(@v.id).to eq(001)
            expect(@v.id).to be_a(Integer)
            expect(@v.id).to be_a_kind_of(Integer)
            expect(@v.id).to be_an_instance_of(Integer)
            expect(@v.id).to be_instance_of(Integer)
            expect(@v.id).not_to be_a(String)
            expect(@v.id).not_to be_a_kind_of(String)
            expect(@v.id).not_to be_an_instance_of(String)
            expect(@v.id).not_to be_instance_of(Numeric)
            expect(@v.id).to be_a(Numeric)
          end

          it "Tiene un atributo para la altura en metros" do
            expect(@v.height).to eq(2.7)
            expect(@v.height).to be_a(Numeric)
            expect(@v.height).to be_a_kind_of(Numeric)
            expect(@v.height).not_to be_a(String)
            expect(@v.height).not_to be_a_kind_of(String)
            expect(@v.height).instance_of?(Numeric)

          end

          it "Tiene un atributo con el ancho en metros" do  
            expect(@v.width).to eq(1.4)
            expect(@v.width).to be_a(Numeric)
            expect(@v.width).to be_a_kind_of(Numeric)
            expect(@v.width).is_a?(Numeric)
            expect(@v.width).instance_of?(Numeric)
            expect(@v.width).not_to be_a_kind_of(String)
          end

          it "Tiene un atributo con el peso en toneladas" do
            expect(@v.weight).to eq(23.8)
            expect(@v.weight).to be_a(Numeric)
            expect(@v.weight).to be_a_kind_of(Numeric)
            expect(@v.weight).is_a?(Numeric)
            expect(@v.weight).instance_of?(Numeric)
            expect(@v.weight).not_to be_a_kind_of(String)
         end

          it "Tiene un atributo con la longitud en metros" do 
            expect(@v.length).to eq(3.2)
            expect(@v.length).to be_a(Numeric)
            expect(@v.length).to be_a_kind_of(Numeric)
            expect(@v.length).is_a?(Numeric)
            expect(@v.length).instance_of?(Numeric)
            expect(@v.length).not_to be_a_kind_of(String)

          end

          it "Se obtiene una cadena con la información del vehículo correctamente formateada" do
            expect(@v.to_s).to eq("Vehiculo con id: 1, 2.7 m de altura, 1.4 m de ancho, 3.2 m de longitud y de peso: 23.8 t")
            expect(@v.to_s).is_a? String
            expect(@v.to_s).instance_of? String
            expect(@v.to_s).class() == String
            expect(@v.to_s).kind_of? String
            expect(@v.to_s).to be_a(String)
            expect(@v.to_s).to be_a_kind_of(String)   
          end

        end #context Atributos de la clase Vehiculo

            context "Herencia de la clase Vehiculo" do

              it "Se espera que una instancia de la clase Vehículo sea un Vehículo" do
                expect(@v.is_a? Parking::Vehiculo).to eq(true)
                expect(@v.instance_of? Parking::Vehiculo).to eq(true)
                expect(@v.class).to eq(Parking::Vehiculo) 
                expect(@v.class).to be(Parking::Vehiculo)
                expect(@v.class).to be == Parking::Vehiculo
              end

              it "Se espera que una instancia de la clase Vehículo sea un objeto (Object)" do
                expect(@v.is_a? Object).to eq(true)
                expect(@v.instance_of? Object).to eq(false)
                expect((@v.class).is_a? Object).to eq(true)
                expect(@v.class).not_to be_instance_of(Object)
                expect(@v.class).to be_a_kind_of(Object)
                expect(Parking::Vehiculo.superclass).to eq(Object)
              end
              

              it "Se espera que una instancia de la clase Vehículo sea un objeto básico(BasicObject)" do
                expect(@v.is_a? BasicObject)
                expect(@v.instance_of? BasicObject)
                expect(@v.class).is_a? BasicObject
                expect(@v.class).to be_a_kind_of(BasicObject)
              end

              it "No se espera que una instancia de la clase Vehículo sea una cadena (String)" do
                expect((@v).is_a? String).to eq(false)
                expect(@v.instance_of? String).to eq(false)
                expect((@v.class).is_a? String).to eq(false)
                expect(@v.class).not_to be_instance_of(String)
                expect(@v.class).not_to be_a_kind_of(String)
                expect(@v.class).not_to be_an_instance_of(String)
              end

              it "No se espera que una instancia de la clase Vehículo sea un número (Numeric)" do
                expect((@v).is_a? Numeric).to eq(false)
                expect(@v.instance_of? Numeric).to eq(false)
                expect((@v.class).is_a? Numeric).to eq(false)
                expect(@v.class).not_to be_instance_of(Numeric)
                expect(@v.class).not_to be_a_kind_of(Numeric)
                expect(@v.class).not_to be_an(Numeric)
              end

              it "Se espera que cada vez que se instancie un objeto de la clase Vehículo se incremente el contador de objetos de la clase" do
                #expect(@v.n_instances).to eq(7)
                expect(@v.n_instances).to be_a(Numeric)
                expect(@v.n_instances).to be_a_kind_of(Numeric)
              end

              it "Se espera que dos vehiculos sean iguales si tienen el mismo volumen" do
                expect(@v3 <=> @v2).to eq(0)
                expect(@v2 == @v3).to eq(true)
                expect(@v3 <= @v).to eq(true)
                expect(@v >= @v2).to  eq(true)
                expect(@v2 < @v).to eq(true)
                expect(@v3 > @v).to eq(false)
              end

            end #context Herencia de la clase Vehiculo
  end #Representación clase Vehiculo

#
#
#   EXPECTATIVAS DE LA CLASE VEHICULO DE MOTOR
#
#

  context "Representación de un Vehículo de motor - Aparcamiento::Motor" do

    context "Atributos de la clase Motor" do

      it "Tiene una clase para representar vehículos de motor" do
        expect(Parking::Motor).to be_a(Class)
        expect(Parking::Motor).to be_a_kind_of(Class)
        expect(Parking::Motor).to be_an_instance_of(Class)
        expect(Parking::Motor).to be_instance_of(Class)
        expect(Parking::Motor.ancestors).to include(Parking::Vehiculo)
      end

      it "Constructor de la clase Motor" do
        expect(Parking::Motor).to respond_to(:new).with(4).arguments
        expect(@m).to be_a(Parking::Motor)
        expect(@m).to be_a_kind_of(Parking::Motor)
        expect(@m).to be_an_instance_of(Parking::Motor)
        expect(@m).to be_instance_of(Parking::Motor)
        expect(@m).is_a? Parking::Motor
        expect(@m).instance_of? Parking::Motor
        expect(@m).class == Parking::Motor
        expect((@m).class).not_to eq(Parking::Vehiculo)
        expect(@m).not_to be_instance_of(Parking::Vehiculo)
      end

      it "Tiene un atributo para el numero de ruedas" do
        expect(@m.n_wheels).to eq(2)
        expect(@m.n_wheels).to be_a(Numeric)
        expect(@m.n_wheels).to be_a_kind_of(Numeric)
        expect(@m.n_wheels).is_a?(Numeric)
        expect(@m.n_wheels).instance_of?(Numeric)
        expect(@m.n_wheels).not_to be_a_kind_of(String)
      end

      it "Tiene un atributo para el número de plazas" do
        expect(@m.n_seats).to eq(2)
        expect(@m.n_seats).to be_a(Numeric)
        expect(@m.n_seats).to be_a_kind_of(Numeric)
        expect(@m.n_seats).to be_an(Numeric)
        expect(@m.n_seats).is_a?(Numeric)
        expect(@m.n_seats).instance_of?(Numeric)
        expect(@m.n_seats).not_to be_a_kind_of(String)
      end

      it "Tiene un atributo para la potencia del motor en cm cubicos" do
        expect(@m.cc).to eq(125)
        expect(@m.cc).to be_a(Numeric)
        expect(@m.cc).to be_a_kind_of(Numeric)
        expect(@m.cc).is_a?(Numeric)
        expect(@m.cc).instance_of?(Numeric)
        expect(@m.cc).not_to be_a_kind_of(String)
      end

      it "Tiene un atributo para la velocidad máxima en kilómetros por hora" do
        expect(@m.max_speed).to eq(120)
        expect(@m.max_speed).to be_a(Numeric)
        expect(@m.max_speed).to be_a_kind_of(Numeric)
        expect(@m.max_speed).is_a?(Numeric)
        expect(@m.max_speed).instance_of?(Numeric)
        expect(@m.max_speed).not_to be_a_kind_of(String)
      end

      it "Se obtiene una cadena con la información del vehículo a motor correctamente formateada" do
        expect(@m.to_s).to eq("Vehículo de motor con 2 ruedas, 2 asientos, 125 cm^3 de motor y 120 km/h como velocidad máxima")
        expect(@m.to_s).to be_a(String)
        expect(@m.to_s).to be_a_kind_of(String)
        expect(@m.to_s).to be_an_instance_of(String)
        expect(@m.to_s).to be_instance_of(String)
      end

    end   #context Atributos de la clase Motor

    context "Herencia de la clase Motor" do

      it "Se espera que una instancia de la clase Motor sea un vehículo de motor" do
        expect(@m.is_a? Parking::Motor).to eq(true)
        expect(@m.instance_of? Parking::Motor).to eq(true)
        expect(@m).to be_an_instance_of(Parking::Motor)
        expect(@m).to be_an(Parking::Motor)
      end

      it "Se espera que una instancia de la clase Motor sea un Vehículo" do
        expect(@m.is_a? Parking::Vehiculo).to eq(true)
        expect(@m.instance_of? Parking::Vehiculo).to eq(false)
        expect(@m.class.superclass).to eq(Parking::Vehiculo)
      end

      it "Se espera que una instancia de la clase Motor sea un objeto (Object)" do
        expect(@m.is_a? Object).to eq(true)
        expect(@m.instance_of? Object).to eq(false)
        expect(@m.class.superclass.superclass).to eq(Object)
      end

      it "Se espera que una instancia de la clase Motor sea un objeto básico (BasicObject)" do
        expect(@m.is_a? BasicObject).to eq(true)
        expect(@m.instance_of? BasicObject).to eq(false)
        expect(@m.class.superclass.superclass.superclass).to eq(BasicObject)
      end

      it "No se espera que una instancia de la clase Motor sea una cadena (String)" do
        expect(@m.is_a? String).to eq(false)
        expect(@m.instance_of? String).to eq(false)
        expect(@m).to_not be_a_kind_of(String)
        expect(@m).to_not be_an(String)
      end

      it "No se espera que una instancia de la clase Motor sea un número (Numeric)" do
        expect(@m.is_a? Numeric).to eq(false)
        expect(@m.instance_of? Numeric).to eq(false)
        expect(@m).to_not be_a_kind_of(Numeric)
        expect(@m).to_not be_an(Numeric)
      end

      it "Se espera que los Vehiculos de Motor sean comparables por el numero de plazas" do
        expect(@m <=> @m2).to eq(-1)
        expect(@m2 == @m3).to eq(true)
        expect(@m2 <=> @m3).to eq(0)
        expect(@m <= @m3).to eq(true)
        expect(@m2 >= @m).to  eq(true)
        expect(@m < @m2).to eq(true)
        expect(@m3 > @m).to eq(true)
      end

    end  #context Herencia de la clase Motor

  end  #describe Motor

#
#     
#    EXPECTATIVAS DE LA GEMA APARCAMIENTO
#
#

      context "Representación de los Datos de un Aparcamiento - Parking::Data" do
         context "Atributos de la clase Parking::Data" do
          context "Tiene una clase para almacenar los datos del aparcamiento" do
            it "Costructor" do
              expect(@p).not_to eq(nil)
              expect(@p).not_to eq(@q)
              expect(@p).to eq(@p)
            end

            it "Todo aparcamiento tiene el atributo de accesibilidad (1..5)" do
              expect(@p.accessibility).to eq(5)
              expect(@p.accessibility).not_to eq(3)
              expect { @p.accessibility(-1) }.to raise_error(ArgumentError) #negativos
              expect { @p.accessibility(6) }.to raise_error(ArgumentError) #fuera de rango
              expect { @p.accessibility("diez") }.to raise_error(ArgumentError) #String
              expect { @p.accessibility(1.0) }.to raise_error(ArgumentError) #Float    
            end
           

            it "Todo aparcamiento tiene el atributo seguridad(1..10)" do
              expect(@p.security).to eq(6)
              expect(@p.security).not_to eq(3)
              expect { @p.security(-1) }.to raise_error(ArgumentError)
              expect { @p.security(11) }.to raise_error(ArgumentError)
              expect { @p.security("diez") }.to raise_error(ArgumentError)
              expect { @p.security(1.0) }.to raise_error(ArgumentError)   
            end

            it "Un aparcamiento tiene un atributo para su identificación" do
              expect(@p.id).to eq(001)
              expect(@p.id).not_to eq(000)
              expect { @p.id(-1) }.to raise_error(ArgumentError)
              expect { @p.id("diez") }.to raise_error(ArgumentError)
              expect { @p.id(1.0) }.to raise_error(ArgumentError)  
            end

            it "Un aparcamiento tiene un atributo para su nombre comercial" do
              expect(@p.name).to eq("Suarez")
              expect(@p.name).not_to eq("Houston")
              expect { @p.name(-1) }.to raise_error(ArgumentError)
              expect { @p.name(1.0) }.to raise_error(ArgumentError)
            end

            it "Un aparcamiento tiene un atributo para su descripción (Cubierto - Aire libre - Mixto)" do 
              expect((@p.desc).is_a? Numeric).to eq(false)
              expect((@p.desc).is_a? String).to eq(true)
              expect((@p.desc).is_a? Hash).to eq(false)
              expect((@p.desc).is_a? Array).to eq(false)
            end

            it "Tiene un atributo para el tipo de aparcamiento (autobuses, bicicletas, coches, motos)" do
              expect((@p.type).is_a? Numeric).to eq(false)
              expect((@q.type).is_a? String) 
              expect((@p.type).is_a? Hash).to eq(false)
              expect((@p.type).is_a? Array).to eq(false)
            end

            it "Tiene un atributo para representar el conjunto de plazas del aparcamiento (altura, longitud, anchura)" do 
              expect((@parking_spot[0]).is_a? Numeric).to eq(true)
              expect((@parking_spot[1]).is_a? Numeric).to eq(true)
              expect((@parking_spot[2]).is_a? Numeric).to eq(true)

              expect((@parking_spot[0]).is_a? String).to eq(false)
              expect((@parking_spot[1]).is_a? String).to eq(false)
              expect((@parking_spot[2]).is_a? String).to eq(false)
            end

            it "Tiene un atributo para representar el conjunto de plazas libres y ocupadas" do 
              expect(@p.n_freespots).to eq(4)
              expect((@p.n_freespots).is_a? Integer).to eq(true)
              expect(@p.oc_spots).to eq(0)
              expect(@q.oc_spots).to eq(0)
            end

            it "Tiene un método para obtener un a cadena con la información del aparcamiento correctamente formateada" do 
              
              expect(@p.to_s).to eq("1 - Suarez - Cubierto - motos - 4 - 5 - 6 - 1.0 - 2.8 - 1.9, 5, 2, 2 , 0, 0.5, 14.5, [nil], 2022-11-25 10:10:10 +0100, 2022-11-25 12:40:10 +0100")
              expect(@p.to_s).not_to eq("3 - Suarez - Cubierto - motos - 4 - 5 - 6 - 1.0 - 2.8 - 1.9")
              expect(@p.to_s).is_a? String
              expect(@p.to_s).not_to eq(nil)
            
            end

            it "Tiene un metodo para devolver el numero de plazas del aparcamiento" do
               expect(@p.n_spots).to eq(4)
               expect((@p.n_spots).is_a? Integer).to eq(true)
            end

            it "Tiene un método para devolver el número de plazas libres del aparcamiento" do
              expect(@p.n_freespots).to eq(4)
              expect((@p.n_freespots).is_a? Integer).to eq(true)
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
            it "Se espera que una instancia de la clase Data sean Parking::Data" do
              expect(@p).to be_a(Parking::Data)
              expect(@p).is_a? Parking::Data
              expect(@p).instance_of? Parking::Data
              expect(@p).kind_of? Parking::Data
            end
            
            it "Se espera que una instancia de la clase Data sea un objeto (Object)" do
              expect((@p).is_a? Object).to eq(true)
              expect((@p).instance_of? Object).to eq(false)
              expect((@p).kind_of? Object).to eq(true)
              expect(@p.class.superclass).to eq(Object)
            end

            it "Se espera que una instancia de la clase Data sea un objeto básico (BasicObject)" do
              expect((@p).is_a? BasicObject).to eq(true)
              expect((@p).instance_of? BasicObject).to eq(false)
              expect((@p).kind_of? BasicObject).to eq(true)
              expect(@p.class.superclass.superclass).to eq(BasicObject)
            end

            it "No se espera que una instancia de la clase Data sea un Vehículo (Vehiculo)" do
              expect(@p).not_to be_a(Parking::Vehiculo)
              expect((@p).is_a? Parking::Vehiculo).to eq(false)
              expect((@p).instance_of? Parking::Vehiculo).to eq(false)
              expect((@p).kind_of? Parking::Vehiculo).to eq(false)
              expect(@p.class.superclass.superclass.superclass).not_to eq(Parking::Vehiculo)
            end

            it "No se espera que una instancia de la clase Data sea un Vehículo de motor (Motor)" do
              expect(@p).not_to be_a(Parking::Motor)
              expect((@p).is_a? Parking::Motor).to eq(false)
              expect(@p).not_to be_instance_of(Parking::Motor)
              expect((@p).kind_of? Parking::Motor).to eq(false)
              expect(@p.class.superclass.superclass.superclass).not_to eq(Parking::Motor)
            end

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

        it "Existe una constante para representar si el aparcamiento está completo" do
          expect(Parking::IS_COMPLETE).to eq("Parking is already full")
        end

        it "Existe una constante para representar si el aparcamiento tiene plazas libres" do
          expect(Parking::IS_FREE).to eq("Parking still has empty spots")
        end
        
        it "Existe una funcion para mostrar el estado de un aparcamiento (completo, plazas libres)" do
          expect(@status.status).to eq(Parking::IS_FREE)
          expect(@statusp2.status).to eq(Parking::IS_FREE)
          expect { @status.status}.not_to raise_error
          expect { @status.status(1,2) }.to raise_error(ArgumentError)
          expect { @status.status(Float)}.to raise_error(ArgumentError)
          expect { @status.status(String)}.to raise_error(ArgumentError)
          expect { @status.status(Integer)}.to raise_error(ArgumentError)
        end

        it "Existe una clase para representar los datos de un aparcamiento" do
          expect(Parking::Functions).not_to eq(nil)
          expect(@status.class).to eq(Parking::Functions)
          expect(@statusp2.class).to eq(Parking::Functions)
          expect(@status).to be_an_instance_of(Parking::Functions)
          expect(@status).to be_a(Parking::Functions)
          expect(@status).to be_a_kind_of(Parking::Functions)
        end

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

      context "Herencia del módulo Parking" do

        it "Se espera que un aparcamiento sea un objeto de la clase Module" do
          expect(Parking.class).to eq(Module)
          expect(Parking.class).to be_a(Module)
          expect(@v.class).to be_a_kind_of(Module)
          expect(@m.class).to be_a_kind_of(Module)
        end

        it "Se espera que un aparcamiento sea un objeto de la clase Object (Object)" do
          expect(@v.class).to be_a_kind_of(Object)
          expect(@m.class).to be_a_kind_of(Object)
          expect(Parking.class).to be_a_kind_of(Object)
          expect(Parking.class).to be_a(Object)
          expect(Parking.class).instance_of?(Object)
          expect(Parking.class.superclass).to be_a(Object)
        end

        it "Se espera que un aparacamiento sea un objeto básico (BasicObject)" do
          expect(@v.class).to be_a_kind_of(BasicObject)
          expect(@m.class).to be_a_kind_of(BasicObject)
          expect(Parking.class).to be_a_kind_of(BasicObject)
          expect(Parking.class).to be_a(BasicObject)
          expect(Parking.class.instance_of?(BasicObject))
          expect(Parking.class.superclass).to be_a(BasicObject)
        end

        it "No se espera que un aparcamiento sea una clase (Class)" do
          expect(Parking.instance_of?(Class)).to eq(false)
          expect(Parking.is_a?(Class)).to eq(false)
          expect(Parking).not_to be_a(Class)
          expect(Parking).not_to be_a_kind_of(Class)
          expect(Parking).not_to be_a_kind_of(Class)
        end

        it "No se espera que un aparcamiento sea un vehículo (Vehicle)" do
          expect(Parking.instance_of?(Parking::Vehiculo)).to eq(false)
          expect(Parking.is_a?(Parking::Vehiculo)).to eq(false)
          expect(Parking).not_to be_a(Parking::Vehiculo)
          expect(Parking).not_to be_a_kind_of(Parking::Vehiculo)
        end

        it "No se espera que un aparcamiento sea un vehículo a motor (Motor)" do
          expect(Parking.instance_of?(Parking::Motor)).to eq(false)
          expect(Parking.is_a?(Parking::Motor)).to eq(false)
          expect(Parking).not_to be_a(Parking::Motor)
          expect(Parking).not_to be_a_kind_of(Parking::Motor)
        end
      end #end Herencia Modulo Parking

    end
