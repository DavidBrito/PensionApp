Dado("possuo quarto cadastrado") do
  create_room(@property)
  create_room(@property)
  create_room(@property)
end

Dado("estou na pagina cadastro quartos") do
  visit new_room_path
end

Dado("estou na pagina propriedades") do
  visit properties_path
end

Quando("adiciono dados incorretos do quarto") do
  
  fill_in "room[number]", with: ""
  select @property.name, from: "room[property_id]", :visible => :all
  
  click_on 'Criar Quarto'
end

Quando("adiciono dados corretos do quarto") do
  
  new_room = build_room(@property)
  fill_in "room[number]", with: new_room.number
  select @property.name, from: "room[property_id]", :visible => :all
  
  click_on 'Criar Quarto'
end

Quando("clico em editar quarto") do

  @room_id = page.first(:css, "tr#rooms-values td#id").text.to_i
  page.first(:css, "tr#rooms-values td a#edit").click
  expect(page).to have_current_path(edit_room_path(@room_id))
end

Quando("clico em deletar quarto") do
  page.first(:css, "tr#rooms-values td a#delete").click
end

Quando("quando estou na pagina editar quartos") do
    expect(page).to have_current_path(edit_room_path(@room_id))
end

Então("consigo editar quarto com sucesso") do
  expect(page).to have_content "Quarto alterado com sucesso."  
end

Então("adiciono quarto com sucesso") do
  expect(page).to have_content "Quarto criado com sucesso."  
end

Então("nao consigo adicionar quarto") do
  expect(page.text).to match(/[Ee]rros?/)
end

Então("não consigo editar quarto com sucesso") do
  expect(page.text).to match(/[Ee]rros?/)
end

Então("quarto deve ser deletado") do
  expect(page).to have_content "Quarto deletado com sucesso."
end