Dado("que estou na pagina inicial do pensionapp") do
  visit root_path
end

Então("devo ir para pagina de cadastro") do
  visit new_user_registration_path
end

Quando("preencho os dados corretamente como proprietário") do
  fill_in("user[name]", with: 'teste1')
  fill_in("user[cpf]", with: '78945612312')
  fill_in("user[email]", with: 'test1@cin.ufpe.br')
  find("#user_user_type").find(:xpath, 'option[1]').select_option
  fill_in("user[password]", with: '456123')
  fill_in("user[password_confirmation]", with: '456123')
end

Quando("preencho os dados corretamente como inquilino") do
  fill_in("user[name]", with: 'test2')
  fill_in("user[cpf]", with: '12345678978')
  fill_in("user[email]", with: 'test2@cin.ufpe.br')
  find("#user_user_type").find(:xpath, 'option[2]').select_option
  fill_in("user[password]", with: '456123')
  fill_in("user[password_confirmation]", with: '456123')
end

Então("devo ir para pagina de usuario") do
  visit homepage_path
end

Então("eu sou proprietário") do
  next
end

Então("eu sou inquilino") do
  next
end
