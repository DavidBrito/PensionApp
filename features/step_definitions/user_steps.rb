# DADO

Dado("possuo inquilino cadastrado") do
  @tenant = create_user(tenant=0)
end

Dado("estou na pagina usuarios") do
  visit users_path
end

# QUANDO

Quando("clico em visualizar inquilino") do
  user_id = page.first(:css, "tr#users-values td#id").text.to_i
  user_type = page.first(:css, "tr#users-values td#user-type").text
  
  expect(user_type).to eq('tenant')
  page.first(:css, "tr#users-values td a#show").click
  expect(page).to have_current_path(user_path(user_id))
end

Quando("clico em deletar inquilino") do
  page.first(:css, "tr#users-values td a#delete").click
end

# ENTÃO

Então("posso ver dados do inquilino") do
  expect(page).to have_content("Visualizar")
end

Então("inquilino deve ser deletado") do
  expect(page).to have_content("Usuário deletado com sucesso.")
end