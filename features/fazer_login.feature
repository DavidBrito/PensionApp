# language: pt

Funcionalidade: fazer login
Como um usuário já cadastrado  
Para que eu possa acessar a aplicação  
Eu quero poder logar no PensionApp com um email e senha

Cenário: Usuário tenta logar como usuario cadastrado e consegue
Dado que estou na pagina de login
Quando preencho os dados do login sendo cadastrado
E clico em "Log in"
Então estou na pagina de usuario

Cenário: Usuário tenta logar como usuario cadastrado e falha
Dado que estou na pagina de login
Quando preencho os dados do login sem ser cadastrado
E clico em "Log in"
Então ver mensagem de erro
