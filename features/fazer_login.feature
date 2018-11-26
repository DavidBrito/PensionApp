Feature: fazer login
Como um usuário já cadastrado  
Para que eu possa acessar a aplicação  
Eu quero poder logar no PensionApp com um email e senha

Scenario: Usuário tenta logar como usuario cadastrado e consegue
Given estou na pagina de login
When preencho os dados do login sendo cadastrado
And clico em "Log in"
Then estou na pagina de usuario

Scenario: Usuário tenta logar como usuario cadastrado e falha
Given estou na pagina de login
When preencho os dados do login sem ser cadastrado
And clico em "Log in"
Then ver mensagem de erro
