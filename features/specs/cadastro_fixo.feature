#language: pt

Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_dados_fixos
Cenario: Cadastrar cliente com dados validos fixos
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'imersao_ruby_front14@gmail.com'
E preencho os campos do formulario com dados validos fixos
Quando confirmo o cadastro
Entao devo ser direcionado a pagina da minha conta