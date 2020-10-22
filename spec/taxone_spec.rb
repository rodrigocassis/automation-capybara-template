describe "TaxOne", :taxone do
  before(:each) do
    visit("https://qa.onesourcetax.com/")
  end

  it "Acessar TaxOne" do
    sleep 10
  end

  after(:each) do
    sleep 5
  end
end
