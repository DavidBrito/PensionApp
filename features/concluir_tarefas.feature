# language:pt

@concluir_tarefas

Funcionalidade: Concluir tarefa
Como um inquilino
Para que uma tarefa saia do Quadro de Tarefas
Eu quero marcar uma tarefa como realizada

Contexto:
Dado sou usuario logado

Cenário: Tento concluir tarefa alocada para mim 
Dado estou na pagina quadro de tarefas
E existe tarefa alocada para mim
Quando tarefa esta alocada para mim
E tento concluir minha tarefa
Então tarefa deve ser concluida

Cenário: Tarefa não alocada para mim
Dado estou na pagina quadro de tarefas
E existe tarefa nao alocada para mim
Quando tarefa nao alocada para mim
Então não vejo o link para conclui-la