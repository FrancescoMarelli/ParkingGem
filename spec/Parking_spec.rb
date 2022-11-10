RSpec.describe Parking do
  before :all do

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

  context "Tiene una clase para almacenar los datos del aparcamiento" do
     it "does something useful" do
       expect(true).to eq(true)
     end
  end

end
