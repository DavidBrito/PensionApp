# GIVEN

Dado("sou usuario cadastrado") do
  sign_up
end

Dado('sou usuario logado') do
  sign_up
  login
end

Dado("estou na pagina criar tarefas") do
  visit new_task_path
end

Dado("estou na pagina quadro de tarefas") do
  visit tasks_path
end

Dado("estou na pagina inicial do usuario") do
  visit homepage_path
end

Dado("existe tarefa alocada para mim") do
  @delegated_task = new_task(@user.name)
end

Dado("existe tarefa nao alocada para mim") do
  expect(Task.where(delegated: @user.id).exists?).not_to be_truthy
  @not_delegated_task = new_task
end


# WHEN


Quando("clico em {string}") do |link|
  click_on link
end

Quando("preencho o formulario de tarefas") do
  fill_in("task[title]", with: 'Jogar lixo fora')
  fill_in("task[description]", with: 'Jogar o lixo fora para nao apodrecer')
  select(@user.name, :from => 'task[delegated]')
  end

Quando("preencho o formulario de tarefas sem delegado") do
  fill_in("task[title]", with: 'Jogar lixo fora')
  fill_in("task[description]", with: 'Jogar o lixo fora para nao apodrecer')
end

Quando("tento criar tarefa sem campos obrigatorios preenchidos") do
  fill_in('task[description]', with: nil )
end

Quando("tento concluir minha tarefa") do
   visit tasks_path
   @page_task_id = page.first(:css, "tr#task-values td.id").text
   td = page.first(:css, "tr#task-values td a#complete").click
   expect(page).to have_content("Tarefa concluida com sucesso.")
end

Quando("tarefa esta alocada para mim") do
 expect{Task.find(@delegated_task.id)}.not_to raise_exception
end

Quando("tarefa nao alocada para mim") do
 expect(Task.find(@not_delegated_task.id).delegated).not_to eq(@user.name) 
end


# THEN

Então("uma nova tarefa é criada") do
  expect(page).to have_content "Tarefa criada com sucesso."
end

Então("devo ver mensagem de erro") do
  expect(page.text).to match(/[Ee]rros?/)
end

Então("tarefa deve ser concluida") do
  expect(Task.find(@page_task_id).status).to eq(1)
end

Então("não vejo o link para conclui-la") do
  expect{page.first(:css, "tr#task-values td a#complete")}.to raise_error(Capybara::ExpectationNotMet)
end