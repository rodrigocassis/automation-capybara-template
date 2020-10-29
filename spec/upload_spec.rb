describe "Upload", :upload do
  before(:each) do
    visit("apps/select2/upload")

    @imagem = Dir.pwd + "/spec/fixtures/logo.png"
    @arquivo = Dir.pwd + "/spec/fixtures/texto2.txt"
  end

  it "upload com arquivo texto" do
    attach_file("file-upload", @arquivo)
    click_button "Upload"

    div_arquivo = find("#uploaded-file")
    expect(div_arquivo.text).to eql "texto2.txt"
  end

  it "upload com imagem", :upload_imagem do
    attach_file("file-upload", @imagem)
    click_button "Upload"

    img = find("#new-image")
    expect(img[:src]).to include "logo.png"
  end

  it "upload com imagem", :upload_imagem do
    attach_file("file-upload", @imagem)
    click_button "Upload"

    img = find("#new-image")
    expect(img[:src]).to include "logo.png"
  end

  after(:each) do
    sleep 5
  end
end
