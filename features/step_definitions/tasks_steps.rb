# FEATURE CRIAR TAREFA

Given("estou na pagina criar tarefas") do
  visit new_task_path
end

When("clico em {string}") do |link|
  click_on link
end

When("preencho o formulario de tarefas") do
  fill_in("task[title]", with: 'Jogar lixo fora')
  fill_in("task[description]", with: 'Jogar o lixo fora para nao apodrecer')
  fill_in("task[delegated]", with: '1')
end

When("tento criar tarefa sem campos obrigatorios preenchidos") do
  fill_in('task[description]', with: 'Jogar o lixo fora para nao apodrecer')
end

Then("uma nova tarefa é criada") do
  expect(page).to have_content 'Task was successfully created'
end

Then("devo ver mensagem de erro") do
  expect(page).to have_content "Title can't be blank"
end