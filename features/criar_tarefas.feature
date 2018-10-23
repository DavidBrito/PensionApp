Feature: criar tarefas
Como um inquilino
Para que um tarefa apareça no quadro de tarefas
Eu quero adicionar uma tarefa

Scenario: Inquilino tenta criar tarefa e consegue
Given estou na pagina criar tarefas
When preencho o formulario de tarefas
And clico em "Criar Tarefa"
Then uma nova tarefa é criada

Scenario: Inquilino tenta criar tarefa e falha
Given estou na pagina criar tarefas
When tento criar tarefa sem campos obrigatorios preenchidos
And clico em "Criar Tarefa"
Then devo ver mensagem de erro