RSpec.describe Parking do
  before :all do
    @p = Parking::Data.new(001,"Aparcamiento LL","Cubierto","moto", 50,50, 5, 4)

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
            expect(d).not_to eq(nil)
          end

           it "Todo aparcamiento tiene el atributo de accesibilidad (1..5)" do
              
           end
          end
        end

end
