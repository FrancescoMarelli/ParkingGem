RSpec.describe Parking do

  before :all do
    @parking_spot = Parking::ParkingSpot.new(2.0,2.8,1.9)
    @p = Parking::Data.new(001,"Aparcamiento LL","Cubierto","moto", 50, 50, 5, 6, @parking_spot)
    @q = Parking::Data.new(001,"Aparcamiento SC","Abierto","coche", 50, 10, 3, 10, @parking_spot)
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
            expect { @p.accessibility(-1) }.to raise_error(ArgumentError)
            expect { @p.accessibility("diez") }.to raise_error(ArgumentError)
            expect { @p.accessibility(1.0) }.to raise_error(ArgumentError)            
           end

           it "Todo aparcamiento tiene el atributo seguridad(1..10)" do
            expect(@p.security).to eq(6)
            expect(@p.security).not_to eq(3)
            expect { @p.security(-1) }.to raise_error(ArgumentError)
            expect { @p.security("diez") }.to raise_error(ArgumentError)
            expect { @p.security(1.0) }.to raise_error(ArgumentError)   
           end

        end
      end

end
