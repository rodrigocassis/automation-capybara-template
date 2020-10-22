describe "Mouse Hover", :hovers do
  before(:each) do
    visit("https://training-wheels-protocol.herokuapp.com/hovers")
  end

  it "quando passo o mouse sobre o blade" do
    card = find("img[alt*=Blade]")
    card.hover

    expect(page).to have_content "Nome: Blade"

    sleep 5
  end

  it "quando passo o mouse sobre o pantera negra" do
    card = find("img[alt^=Pantera]")
    card.hover

    expect(page).to have_content "Nome: Pantera Negra"

    sleep 5
  end

  it "quando passo o mouse sobre o homem aranha" do
    card = find("img[alt$=Aranha]")
    card.hover

    expect(page).to have_content "Nome: Homem Aranha"

    sleep 5
  end
  after(:each) do
    sleep 5
  end
end
