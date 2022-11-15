RSpec.describe Parking do

  before :all do
    @parking_spot = Parking::ParkingSpot.new(1.0,2.8,1.9)

    @p = Parking::Data.new(001,"Suarez", "Cubierto", "motos", 50, 50, 5, 6, @parking_spot)
    @q = Parking::Data.new(002,"Cristo Diaz","Aire libre", "coches", 50, 10, 3, 10, @parking_spot)
    @v = Parking::Vehiculo.new(001, 2.7, 1.4, 3.2, 23.8)


  end

  context "Representación de un Vehiculo - Parking::Vehiculo" do
        context "Atributos de la clase Vehiculo" do
          it "Tiene una clase para representar vehículos" do

          end
        end
            context "Herencia de la clase Vehiculo" do
              it "Se espera que una instancia de la clase Vehículo sea un Vehículo" do
                expect(@v.is_a? Parking::Vehiculo)
                expect(@v.instance_of? Parking::Vehiculo)
                expect(@v.class).to eq(Parking::Vehiculo)
              end

              it "Se espera que una instancia de la clase Vehículo sea un objeto (Object)" do
                expect(@v.is_a? Object)
                expect(@v.instance_of? Object)
                expect(@v.class).is_a? Object
              end
              it "Se espera que una instancia de la clase Vehículo sea un objeto básico(BasicObject)" do
                expect(@v.is_a? BasicObject)
                expect(@v.instance_of? BasicObject)
                expect(@v.class).is_a? BasicObject
              end


            end
    
      end

     it "Tiene un número de version: #{Parking::VERSION}" do
       expect(Parking::VERSION).not_to be nil
      end

      context "Funcionalidades" do

        it "Se cuenta con una constante para representar si el aparcamiento está completo" do
          expect(Parking::IS_COMPLETE).to eq("Parking is already full")
        end

        it "Se cuenta con una constante para representar si el aparcamiento tiene plazas libres" do
          expect(Parking::IS_FREE).to eq("Parking still has empty spots")
        end
        
        it "Se cuenta con una funcion para mostrar el estado de un aparcamiento (completo, plazas libres)" do
        expect(Parking::status(10)).to eq(Parking::IS_FREE)
        expect { Parking::status("10")}.to raise_error("Argument is incorrect") #strings
        expect { Parking::status(-10) }.to raise_error("Argument is incorrect")  #negativos
        end
      end

      context "Parking::Data" do
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
             #expect((@p.type).is_a? String).to eq(true) porque es nil? y no string
             expect((@p.type).is_a? Hash).to eq(false)
             expect((@p.type).is_a? Array).to eq(false)
           end

           it "Tiene un atributo para representar el conjunto de plazas del aparcamiento (altura, longitud, anchura)" do 
           expect((@parking_spot.width).is_a? Numeric).to eq(true)
           expect((@parking_spot.length).is_a? Numeric).to eq(true)
           expect((@parking_spot.height).is_a? Numeric).to eq(true)

           expect((@parking_spot.width).is_a? String).to eq(false)
           expect((@parking_spot.length).is_a? String).to eq(false)
           expect((@parking_spot.height).is_a? String).to eq(false)
           end

           it "Tiene un atributo para representar el conjunto de plazas libres y ocupadas" do 
             expect(@p.n_freespots).to eq(50)
             expect((@p.n_freespots).is_a? Integer).to eq(true)
             expect(@p.oc_spots).to eq(0)
             expect(@q.oc_spots).to eq(40)
            end

            it "Tiene un metodo para devolver el numero de plazas del aparcamiento" do
               expect(@p.n_spots).to eq(50)
               expect((@p.n_spots).is_a? Integer).to eq(true)
            end

            it "Tiene un método para devolver el número de plazas libres del aparcamiento" do
              expect(@p.n_freespots).to eq(50)
              expect((@p.n_freespots).is_a? Integer).to eq(true)
           end

          end
        end
      end

