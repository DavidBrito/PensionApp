Given("estou na pagina inicial do usuario") do
  visit homepage_path
end

When("clico em {string}") do |link|
  click_on link
end

Then("devo ir para pagina quadro de tarefas") do
  expect(page).to have_current_path(tasks_path)
end

Given("estou na pagina criar tarefas") do
  visit new_task_path
end

When("preencho o formulario de tarefas") do
  fill_in("task[titulo]", with: 'Jogar lixo fora')
  fill_in("task[descricao]", with: 'Jogar o lixo fora para nao apodrecer')
  fill_in("task[data]", with: '21-10-2018 06:18')
end

Then("uma nova tarefa é criada") do
  expect(page).to have_content 'Task was successfully created'
end

When("tento criar tarefa sem campos obrigatorios preenchidos") do
  fill_in('task[titulo]', with: '')
  fill_in('task[descricao]', with: 'Jogar o lixo fora para nao apodrecer')
  fill_in('task[data]', with: '21-10-2018 06:18')
end

Then("devo ver {string}") do |string|
  expect(page).to have_content string  
end