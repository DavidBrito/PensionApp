#FEATURE FAZER LOGIN

Dado("que estou na pagina de login") do
   visit new_user_session_path
end

Quando("preencho os dados do login sendo cadastrado") do
  fill_in("user[email]", with: 'dcea@cin.ufpe.br')
  fill_in("user[password]", with: 'cincin')
end

Quando("preencho os dados do login sem ser cadastrado") do
  fill_in("user[email]", with: 'vc@cin.ufpe.br')
  fill_in("user[password]", with: 'cincin')
end

Então("estou na pagina de usuario") do
  visit homepage_path
end

Então("ver mensagem de erro") do
  expect(page).to have_content "Email ou senha inválida."
end