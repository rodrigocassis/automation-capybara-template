describe "Botões de Radio", :radio do
  before(:each) do
    visit("/radios")
  end

  it "selecao por ID" do
    choose("cap")
  end

  it "selecao por find e css selectios" do
    find("input[value=guardians]").click
  end

  after(:each) do
    sleep 5
  end
end
