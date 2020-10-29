describe "Login3", :login3 do
  before(:each) do
    visit("/access")
  end

  it "login com sucesso" do
    within("#login") do
      find("input[name=username").set "stark"
      find("input[name=password").set "jarvis!"
      click_button "Entrar"
    end
    sleep 3
    expect(find("#flash")).to have_content "Olá, Tony Stark. Você acessou a área logada!"
    sleep 5
  end

  it "cadastro com sucesso" do
    within("#signup") do
      find("input[name=username").set "stark"
      find("input[name=password").set "jarvis!"
      click_link "Criar Conta"
    end
    sleep 3
    expect(page).to have_content "Dados enviados. Aguarde aprovação do seu cadastro!"
    sleep 5
  end
end
