@concluir_tarefas

Feature: Concluir tarefa
Como um inquilino
Para que uma tarefa saia do Quadro de Tarefas
Eu quero marcar uma tarefa como realizada

Background:
Given sou usuario logado
And existe tarefa alocada para mim
And existe tarefa nao alocada para mim

Scenario: Tento concluir tarefa alocada para mim 
Given estou na pagina quadro de tarefas
When tarefa esta alocada para mim
And tento concluir minha tarefa
Then tarefa deve ser concluida

Scenario: Tarefa não alocada para mim
Given estou na pagina quadro de tarefas
When tarefa nao alocada para mim
Then não vejo o link para conclui-la

Scenario: Cocluir tarefa no dashboard