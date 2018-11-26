# DADO

Dado("possuo funcionario cadastrado") do
  create_employee
end

Dado("estou na pagina funcionarios") do
  visit employees_path  
end

Dado("estou na pagina cadastro funcionario") do
  visit new_employee_path
end


# QUANDO


Quando("adiciono dados incorretos do funcionario") do
  
  employee = build_employee
  
  fill_in('employee[first_name]', with: employee[:first_name])
  fill_in('employee[last_name]', with: employee[:last_name])
  fill_in('employee[cpf]', with: "")
  fill_in('employee[contact]', with: employee[:contact])
  
  click_on 'Criar Funcionário'
end

Quando("clico em editar funcionario") do
  @employee_id = page.first(:css, "tr td#id").text.to_i
  page.first(:css, "tr td a#edit").click
  expect(page).to have_current_path(edit_employee_path(@employee_id))
end

Quando("quando estou na pagina editar funcionario") do
  expect(page).to have_current_path(edit_employee_path(@employee_id))
end

Quando("adiciono dados corretos do funcionario") do
  
  employee = build_employee
  
  fill_in 'employee[first_name]', with: employee.first_name
  fill_in 'employee[last_name]', with: employee.last_name
  fill_in 'employee[cpf]', with: employee.cpf
  fill_in 'employee[contact]', with: employee.contact
  
  click_on 'Criar Funcionário'
end

Quando("clico em deletar funcionario") do
  page.first(:css, "tr td a#delete").click
end


# ENTÃO


Então("posso ver lista de funcionarios") do
  expect(page).to have_css('table')
end

Então("adiciono funcionario com sucesso") do
  expect(page).to have_content "Funcionário criado com sucesso."  
end

Então("nao consigo adicionar funcionario") do
  expect(page.text).to match(/[Ee]rros?/)
end

Então("consigo editar funcionario com sucesso") do
  expect(page).to have_content "Funcionário alterado com sucesso."
end

Então("não consigo editar funcionario com sucesso") do
  expect(page.text).to match(/[Ee]rros?/)
end

Então("funcionario deve ser deletado") do
  expect(page).to have_content "Funcionário deletado com sucesso."
end
