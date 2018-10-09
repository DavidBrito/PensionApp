Os testes neste arquivo vão seguir o padrão da DSL **Gherkins** e irão posteriormente ser usados com o cucumber.

### Formato

Feature: [nome da funcionalidade]  
    Como um ...  
    Eu quero ...  
    Para que ...  

Background:
Given [condições criada para o teste/ coisa que já aconteceu]

  | Nome        | Email         | Senha    |  
  | Peter Jones | pj@email.com  | 12345    |  
 
 
Scenario: cadastro na aplicação  
    Given eu sou o usuário "Peter Jones"  
    When eu colocar o email "pj@email.com"  
    And eu colocar a senha "12345"  
    And eu clicar no botão login  
    Then eu devo ver a mensagem "Login autorizado"  
    
LINKS DE APOIO: https://pastebin.com/U0KnNWuQ  

------------------------------------------------------------------
#### Escrevam a partir daqui:
