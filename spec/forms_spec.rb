describe "Forms" do
  it "login com sucesso" do
    visit "https://training-wheels-protocol.herokuapp.com/login"

    fill_in "userId", with: "stark"
    fill_in "password", with: "jarvis!"
    click_button "Login"

    expect(find("#flash").visible?).to be true
    expect(find("#flash").text).to include "Olá, Tony Stark. Você acessou a área logada!"

    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
  end

  it "Login com senha incorreta " do
    visit "http://training-wheels-protocol.herokuapp.com/login"
    fill_in "username", with: "Stark"
    fill_in "password", with: "jarvi"
    click_button "Login"
    expect(find("#flash").visible?).to be true
  end

  it "Login com usuário não cadastrado" do
    visit "http://training-wheels-protocol.herokuapp.com/login"
    fill_in "username", with: "Negan"
    fill_in "password", with: "jarvis!"
    click_button "Login"
    expect(find("#flash")).to have_content "O usuário informado não está cadastrado!"
  end
end
