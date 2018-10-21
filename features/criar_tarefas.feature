Feature: criar tarefas
Como um inquilino
Para que um tarefa apareça no quadro de tarefas
Eu quero adicionar uma tarefa


Scenario: Acessar quadro de tarefas
Given estou na pagina inicial do usuario
When clico em "Quadro de tarefas"
Then devo ir para pagina quadro de tarefas

Scenario: Inquilino tenta criar tarefa e consegue
Given estou na pagina criar tarefas
When preencho o formulario de tarefas
And clico em "Criar Tarefa"
Then uma nova tarefa é criada

Scenario: Inquilino tenta criar tarefa e falha
Given estou na pagina criar tarefas
When tento criar tarefa sem campos obrigatorios preenchidos
Then devo ver "Tarefa não foi criada"