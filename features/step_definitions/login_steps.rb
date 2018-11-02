#FEATURE FAZER LOGIN

Given("estou na pagina de login") do
   visit new_user_session_path
end

When("preencho os dados do login sendo cadastrado") do
  fill_in("user[email]", with: 'dcea@cin.ufpe.br')
  fill_in("user[password]", with: 'cincin')
end

When("preencho os dados do login sem ser cadastrado") do
  fill_in("user[email]", with: 'vc@cin.ufpe.br')
  fill_in("user[password]", with: 'cincin')
end

Then("estou na pagina de usuario") do
  expect(page).to have_content "Homepage"
end

Then("devo ver mensagem de erro") do
  expect(page).to have_content "Email ou senha incorretos"
end