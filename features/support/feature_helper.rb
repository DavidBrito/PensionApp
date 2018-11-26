module FeatureHelper

# Criação de objetos

def create_user(type)
  return FactoryBot.create(:proprietary) if type == 1
  return FactoryBot.create(:tenant) if type == 0 
end

def create_task(owner, delegated="")
  return FactoryBot.create(:task, owner_id: owner.id, delegated: delegated)
end

def create_property(user)
  return FactoryBot.create(:property, proprietary: user)
end

def create_employee
  return FactoryBot.create(:employee)
end

def build_employee
  return FactoryBot.build(:employee)
end

###

def login(type)
  visit new_user_session_path
  
  user = create_user(type)
  
  password = "password"
 
  fill_in("user_email", with: user[:email])
  fill_in("user_password", with: password)
  
  click_button "Log in"
  
  expect(page).not_to have_content("Inválido")
  expect(page).to have_current_path(homepage_path)
  
  return user
end

end

World(FeatureHelper)