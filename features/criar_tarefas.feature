# language: pt

@criar_tarefas

Funcionalidade: criar tarefas
Como um inquilino
Para que um tarefa apareça no quadro de tarefas
Eu quero adicionar uma tarefa

Contexto: um usuario existe
  Dado sou usuario logado

Cenário: Inquilino tenta criar tarefa e consegue
Dado estou na pagina criar tarefas
Quando preencho o formulario de tarefas
E clico em "Criar Tarefa"
Então uma nova tarefa é criada

Cenário: Inquilino tenta criar tarefa e falha
Dado estou na pagina criar tarefas
Quando tento criar tarefa sem campos obrigatorios preenchidos
E clico em "Criar Tarefa"
Então devo ver mensagem de erro