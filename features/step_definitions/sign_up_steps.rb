Dado("que estou na pagina inicial do pensionapp") do
  visit root_path
end

Então("devo ir para pagina de cadastro") do
  visit new_user_registration_path
end

Quando("preencho os dados corretamente") do
  fill_in("user[name]", with: 'dsfsdfsdf@cin.ufpe.br')
  fill_in("user[cpf]", with: 'dsfsdfsdf@cin.ufpe.br')
  fill_in("user[email]", with: 'dsfsdfsdf@cin.ufpe.br')
  fill_in("user[password]", with: '456123')
  fill_in("user[password_confirmation]", with: '4561263')
end

Então("devo ir para pagina de usuario") do
  visit homepage_path
end

Então("eu sou proprietário") do
  pending # Write code here that turns the phrase above into concrete actions
end

Então("eu sou inquilino") do
  pending # Write code here that turns the phrase above into concrete actions
end
