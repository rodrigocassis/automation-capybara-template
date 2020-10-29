describe "Alertas de JavaScript", :alerts do
  before(:each) do
    visit("/javascript_alerts")
  end

  it "alerta" do
    click_button "Alerta"
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "Isto é uma mensagem de alerta"
    sleep 1
  end

  it "confirmacao" do
    click_button "Confirma"
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"
    msg = page.driver.browser.switch_to.alert.accept
    expect(page).to have_content "Mensagem confirmada"

    sleep 1
  end

  it "não confirma" do
    click_button "Confirma"
    msg = page.driver.browser.switch_to.alert.text
    expect(msg).to eql "E ai confirma?"
    msg = page.driver.browser.switch_to.alert.dismiss
    expect(page).to have_content "Mensagem não confirmada"

    sleep 1
  end

  it "accept prompt" do
    accept_prompt(with: "Rodrigo") do
      click_button "Prompt"
      sleep 2
    end

    expect(page).to have_content "Olá, Rodrigo"
    sleep 1
  end

  #desafio

  it "dismiss prompt", :dismiss_prompt do
    dismiss_prompt do
      click_button "Prompt"
      sleep 2
    end

    expect(page).to have_content "Olá, Null"
    sleep 1
  end
end
