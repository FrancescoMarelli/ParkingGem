RSpec.describe Parking do

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

      end

  context "Parking::Data" do
     it "does something useful" do
       expect(true).to eq(true)
     end
  end

end
