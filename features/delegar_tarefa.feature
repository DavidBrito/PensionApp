@delegar_tarefas

Feature: Delegar tarefas
Como um inquilino
Para que uma tarefa adquira um responsável
Eu quero delegar uma tarefa do quadro de avisos a outro inquilino

Background: Usuario esta logado
    Given sou usuario logado

Scenario: Delego tarfa para usuário existente e consigo
Given estou na pagina criar tarefas
When preencho o formulario de tarefas
And clico em "Criar Tarefa"
Then uma nova tarefa é criada

Scenario: Crio tarefa sem delegar usuário
Given estou na pagina criar tarefas
When preencho o formulario de tarefas sem delegado
And clico em "Criar Tarefa"
Then uma nova tarefa é criada
