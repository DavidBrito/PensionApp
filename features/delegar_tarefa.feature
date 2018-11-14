# language:pt

@delegar_tarefas

Funcionalidade: Delegar tarefas
Como um inquilino
Para que uma tarefa adquira um responsável
Eu quero delegar uma tarefa do quadro de avisos a outro inquilino

Contexto: Usuario esta logado
    Dado sou usuario logado

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
