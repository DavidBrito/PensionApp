# FEATURE CRIAR TAREFA

Given("estou na pagina criar tarefas") do
  visit new_task_path
end

When("clico em {string}") do |link|
  click_on link
end

When("preencho o formulario de tarefas") do
  fill_in("task[titulo]", with: 'Jogar lixo fora')
  fill_in("task[descricao]", with: 'Jogar o lixo fora para nao apodrecer')
  fill_in("task[data]", with: '21-10-2018 06:18')
end

When("tento criar tarefa sem campos obrigatorios preenchidos") do
  fill_in('task[descricao]', with: 'Jogar o lixo fora para nao apodrecer')
end

Then("uma nova tarefa é criada") do
  expect(page).to have_content 'Task was successfully created'
end

Then("devo ver mensagem de erro") do
  expect(page).to have_content "Titulo can't be blank"
end