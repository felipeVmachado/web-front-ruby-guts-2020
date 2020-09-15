  Dado('que acesso a pagina de login\/cadastro') do
    @app.cadastropage.load
  end

  Dado('solicito um novo cadastro para o email {string}') do |email|
    @app.cadastropage.iniciar_criacao_conta email
  end
  
  Dado('preencho os campos do formulario com dados validos fixos') do
    @app.cadastropage.preencher_form_com_dados_fixos
  end

  Quando('confirmo o cadastro') do
    @app.cadastropage.confirmar_cadastro
  end
  
  Entao('devo ser direcionado a pagina da minha conta') do
    expect(@app.minhacontapage.page_title.text).to eq("MY ACCOUNT")
    expect(@app.minhacontapage.account_name.text).to eq("Felipe Machado") 
  end