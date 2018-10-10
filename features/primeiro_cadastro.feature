Feature: Fazer primeiro cadastro   
Como um usuário não cadastrado  
Para que eu possa fazer uso da aplicação  
Eu desejo me cadastrar no PensionApp

Scenario: Ir a pagina de cadastro inquilino
Given estou na "pagina inicial do pensionapp"
When clico em "cadastro inquilino"
Then eu vou para "pagina de cadastro inquilino"
 
Scenario: Ir a pagina de cadastro proprietario
Given estou na "pagina inicial do pensionapp"
When clico "cadastro proprietario"
Then eu vou para "pagina de cadastro proprietario"