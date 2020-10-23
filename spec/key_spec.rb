describe "Teclado", :key do
  describe("single", :single) do
    before(:each) do
      visit("https://training-wheels-protocol.herokuapp.com/key_presses")
    end

    it "enviando teclas" do
      teclas = %i[tab escape space enter shift control alt]

      teclas.each do |t|
        find("#campo-id").send_keys t
        expect(page).to have_content "You entered: " + t.to_s.upcase
        sleep 1
      end
    end

    it "enviando letras" do
      teclas = %w[a s d f g h j k l]

      teclas.each do |l|
        find("#campo-id").send_keys l
        expect(page).to have_content "You entered: " + l.to_s.upcase
        sleep 1
      end
    end
  end
end
