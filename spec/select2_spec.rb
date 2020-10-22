describe "Select2", :select2 do
  describe("single", :single) do
    before(:each) do
      visit("https://training-wheels-protocol.herokuapp.com/apps/select2/single.html")
    end
    it "seleciona ator por nome" do
      find(".select2-selection--single").click

      find(".select2-results__option", text: "Adam Sandler").click

      sleep 10
    end
    it "busca e clica no ator" do
      find(".select2-selection--single").click
      find(".select2-search__field").set "Chris Rock"
      find(".select2-results__option").click

      sleep 10
    end
  end
end
