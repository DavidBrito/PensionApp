# Postmortem - Iteração 3

### Período
22/10/18 — 07/11/18

### O que estava planejado?

| Atividade | Responsável |
|-|-|
| Atualizar HU com rastreabilidade | Time |
| Fazer Hi-FI mockup | Adson |
| Testes da HU login | Dairon |
| Testes da HU cadastro inquilino | Claudio |
| Testes da HU cadastro proprietário | Adson |
| Testes da HU delegar e deletar tarefas | Ewerton |
| Implementar login devise | Dairon |
| Implementar Chat Hangouts API | Ewerton |

### Do que foi planejado, o que foi feito?  

* Atualização HU com rastreabilidade:    
  Nas issues marcar o commit que as resolvem e no commit referenciar a issue. (Ex: #35)

* Fazer Hi-Fi mockup:   
  Landing page mockup criado (1/6) 

* Testes da HU login:   
  Testes cucumber feitos, desenvolver testes rspec rspec para todos passarem (green)

* Testes cadastro proprietario:   
  Teste cucumber feitos, agr desenvolver testes rspec para todos passarem (green)
  
* Testes e implementação da lista de tarefas finalizadas   
  Ações: Adicionar, Editar, Deletar, Delegar e Concluir

* Login com devise implementado.   

### Do que não foi planejado, o que foi feito? 
 
 * Estrutura e estilos da landing page -> falta implementar.  
 * Tabelas e colunas do banco vão estar em inglês. Isso ajuda com a convention over configuration Rails. Time mais confortável.
 * Scaffold da entidade Notices (Avisos).
 
### O que não foi feito?

 * Hangouts API: A lista de tarefas demorou um pouco para sair atrasando o início dessa tarefa.
 * Testes da HU cadastro inquilino: falhas no design de como o inquilino vai ser cadastrado, travaram essa atividade, a equipe vai rever como o cadastro do inquilino vai se dar novamente.
 

### O que está planejado para a próxima iteração? 

| Atividade | Responsável |
|-|-|
| Fazer Hi-FI mockup dashboard | Adson |
| Fazer Hi-FI mockup funcionalidades principais | Adson |
| Refinar e Criar teste rspec Login | Dairon |
| Implementar gem Rolify e CanCanCan | Dairon |
| Design review do cadastro inquilino | Claudio |
| Testes cucumber + capybara da funcionalidade Avisos | Claudio |
| Implementar Chat Hangouts API | Ewerton |
| Implementar mockups landing page e dashboard | Adson e ewerton |

### Lições aprendidas  

* Lutar contra a vontade de burlar os processos internos com medo de não conseguir desenvolver a atividade Ex: pular o ciclo BDD -> TDD -> Implementação.

* Comunicar ao "coleguinha" sobre as modificações feitas no projeto com mais detalhes para não haver surpresas desagráveis para todo mundo. Ex: Mudar a configuração do rails ou rspec ou cucumber sem avisar a equipe.
               
* Não se desesperar e fazer as coisas com calma, o que parece estar estagnado pode na verdade estar avançando e não percebemos.


