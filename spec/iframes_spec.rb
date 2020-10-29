describe "iframes", :iframes do
  describe("bom", :nice) do
    before(:each) do
      visit("/nice_iframe")
    end
    it "adicionar ao carrinho", :nice_iframe do
      within_frame("burgerId") do
        produto = find(".menu-item-info-box", text: "REFRIGERANTE")
        produto.find("a").click
        expect(find("#cart")).to have_content "R$ 4,50"
      end

      sleep 10
    end
  end

  describe("ruim", :ruim) do
    before(:each) do
      visit("bad_iframe")
    end
    it "carrinho deve estar vazio", :bad_iframe do
      script = '$(".box-iframe").attr("id","tempId");'

      page.execute_script(script)

      within_frame("tempId") do
        expect(find("#cart")).to have_content "Seu carrinho está vazio!"
      end

      sleep 10
    end
  end
end
