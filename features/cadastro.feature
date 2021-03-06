#language: pt

Funcionalidade: Cadastro de Usuário
  Sendo um visitante do Outgo
  Quero fazer o meu cadastro
  Para que eu possa ouvir minhas músicas favoritas

  @happy
  Cenario: Cadastro
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro com:
      |email         |natan.danilo@gmail.com|
      |senha         |hunterxhunter         |
      |senha_confirma|hunterxhunter         |
    Então devo ser redirecionado para a área logada

  @Email_void
  Cenário: Email não informado
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem o email
    Então devo ver Oops! Informe seu email

  Cenário: Senha não informada
    Dado que acesso a página de cadastro
    Quando submeto o meu cadastro sem a senha
    Então devo ver Oops! Informe sua senha

  Cenário: Senha divergente
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro com senha divergente
    Então devo ver Opps! Senhas não são iguais

  Cenário: Nenhum campo preenchido
    Dado que acesso a página de cadastro
    Quando submeto meu cadastro sem preencher os campos
    Então devo ver Opps! Informe seu email e sua senha
