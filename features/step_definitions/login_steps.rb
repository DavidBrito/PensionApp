#FEATURE FAZER LOGIN

Given("estou na pagina de login") do
   visit login_path
end

When("preencho os dados do login sendo cadastrado") do
  fill_in("user[Email]", with: 'dcea@cin.ufpe.br')
  fill_in("user[titulo]", with: 'cincin')
end

When("preencho os dados do login sem ser cadastrado") do
  fill_in("user[Email]", with: 'vc@cin.ufpe.br')
  fill_in("user[titulo]", with: 'cincin')
end

Then("estou na pagina de usuario") do
  visit user_page_path
end