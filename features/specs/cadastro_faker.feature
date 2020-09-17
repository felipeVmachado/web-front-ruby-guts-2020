#language: pt

Funcionalidade: Cadastrar Cliente
Como um cliente da loja online
Quero cadastrar uma conta
Para efetuar compras

@cadastro_dados_faker
Cenario: Cadastrar cliente com dados aleatorios
Dado que acesso a pagina de login/cadastro
E solicito um novo cadastro para o email 'aleatorio'
E preencho os campos do formulario com dados validos aleatorios
Quando confirmo o cadastro
Entao devo ser direcionado a pagina da minha conta