Feature: cadastro usuario como proprietario
Como um usuario nao cadastrado
Para que eu possa gerir minha moradia
Eu quero cadastrar com o perfil de proprietario

Scenario: Ir pagina cadastro
Given eu estou na pagina inicial do pensionapp
When eu clico em "cadastro proprietario"
Then eu vou para pagina de cadastro proprietario


Scenario: Fazer cadastro

Given eu estou na pagina de cadastro proprietario
When preencho "email" com "email@email.com"
And preencho "senha" com "123456"
And preencho "confirmacao senha" com "123456"
And preencho "nome" com "Deivid"
And preencho "cpf" com "11122233345"
And preencho "telefone" com "81955554444"
And eu clico em "cadastrar"
Then eu vou para pagina inicial do usuario
And devo ver "cadastro realizado com sucesso"