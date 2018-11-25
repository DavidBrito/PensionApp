# language: pt

@tarefas

Funcionalidade: criar, delegar, concluir tarefas

  Como um inquilino
  Para que um tarefa apareça no quadro de tarefas
  Eu quero adicionar uma tarefa

  Como um inquilino
  Para que uma tarefa adquira um responsável
  Eu quero delegar uma tarefa do quadro de avisos a outro inquilino

  Como um inquilino
  Para que uma tarefa saia do Quadro de Tarefas
  Eu quero marcar uma tarefa como realizada



Contexto:
  Dado sou usuario logado
  E existe tarefa alocada para mim
  E existe tarefa nao alocada para mim
  
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
  
Cenário: Delego tarfa para usuário existente e consigo
  
  Dado estou na pagina criar tarefas
  Quando preencho o formulario de tarefas
  E clico em "Criar Tarefa"
  Então uma nova tarefa é criada

Cenário: Crio tarefa sem delegar usuário
  
  Dado estou na pagina criar tarefas
  Quando preencho o formulario de tarefas sem delegado
  E clico em "Criar Tarefa"
  Então uma nova tarefa é criada

Cenário: Tento concluir tarefa alocada para mim 

  Dado estou na pagina quadro de tarefas
  Quando tarefa esta alocada para mim
  E tento concluir minha tarefa
  Então tarefa deve ser concluida

Cenário: Tarefa não alocada para mim

  Dado estou na pagina quadro de tarefas
  Quando tarefa nao alocada para mim
  Então não vejo o link para conclui-la