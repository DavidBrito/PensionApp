# DADO

Dado("sou um usuario logado como proprietario") do
  @user = login(proprietary=1)
end

Dado("possuo propriedade cadastrada") do
  @property = create_property(@user)
end

Dado("estou na pagina de propriedades") do
  visit properties_path
end

Dado("estou na pagina cadastrar propriedades") do
  visit new_property_path
end

Dado("estou na pagina editar propriedades") do
  visit edit_property_path(@property.id)
end


# QUANDO

Quando("insiro todas informações da propriedade") do
  
  fill_in("property[name]", with: 'Pensionato do John')
  fill_in("property[postal_code]", with: '01513030')
  fill_in("property[address]", with: 'Rua do Jose')
  fill_in("property[number]", with: '4512')
  fill_in("property[city]", with: 'Recife')
  fill_in("property[state]", with: 'Pernambuco')
  select @user.name, :from => "property[proprietary_id]", :visible => :all
end

Quando("tento adicionar propriedade com informacoes incorretas") do
  fill_in("property[name]", with: '')
  fill_in("property[postal_code]", with: '01513030b')
  fill_in("property[address]", with: 'Rua do Jose')
  fill_in("property[number]", with: 'h')
  fill_in("property[city]", with: '')
  fill_in("property[state]", with: '')
  
  select("", :from => 'property[proprietary_id]')
  click_on "Criar Propriedade"
end

Quando("clico editar minha propriedade cadastrada") do
  @property_id = page.first(:css, "tr td#id").text.to_i
  page.first(:css, "tr td a#edit").click
  expect(page).to have_current_path(edit_property_path(@property_id))
end

Quando("insiro nova informacao em propriedade") do
  fill_in("property[name]", with: 'Casa do John')
end

Quando("deixo de inserir nova informacao em propriedade") do
  fill_in("property[name]", with: '')  
end

Quando("clico em deletar minha propriedade") do
  page.first(:css, "tr td a#destroy").click
  expect(page).to have_content("Propriedade excluída com sucesso.")
end


# ENTÃO


Então("devo ir para pagina cadastrar propriedades") do
  expect(page).to have_current_path(new_property_path)
  
end

Então("uma nova propriedade deve ser criada") do
  expect(page).to have_content('Propriedade criada com sucesso.')
end

Então("a propriedade nao e criada") do
  expect(page.text).to match(/[Ee]rros?/)
end

Então("devo ir para pagina editar propriedades") do
  expect(page).to have_current_path(edit_property_path(@property_id))
end

Então("a propriedade deve ser atualizada") do
  expect(page).to have_content('Propriedade alterada com sucesso.')
end

Então("a propriedade não deve ser atualizada") do
  expect(page.text).to match(/[Ee]rros?/)
end

Então("a propriedade deve ser excluida") do
  expect(page).to have_content('Propriedade excluída com sucesso.')
end