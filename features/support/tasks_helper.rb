module LoginHelper

# Helpers sobre usuários

def build_user(password='password')
  @user ||= FactoryBot.build(:user, password: password, password_confirmation: password)
end

def create_user(password='password')
  @user ||= FactoryBot.create(:user, password: password, password_confirmation: password)
end

def sign_up
  password = "password"
  user = build_user(password)
  
  delete_user(user) if User.exists?(user.id)
  
  visit new_user_registration_path
  
  fill_in "user[name]", with: user[:name]
  fill_in "user[cpf]", with: user[:cpf]
  fill_in "user[email]", with: user[:email]
  
  select('tenant', :from => 'user[user_type]')
  
  fill_in "user[password]", with: password
  fill_in "user[password_confirmation]", with: password
  
  click_on "Cadastrar"
  
  expect(page).to have_content("Welcome! You have signed up successfully.")
end

def login
  visit destroy_user_session_path
  visit new_user_session_path
  
  password = "password"
  user = build_user(password)
  
  fill_in("user_email", with: user[:email])
  fill_in("user_password", with: password)
  click_button "Log in"
  
  expect(page).not_to have_content("Invalid Email or password")
  expect(page).to have_current_path(homepage_path)

end

def delete_user(user)
  User.find(user.id).destroy
end


# Helpers sobre tarefas

def create_task
  @task ||= FactoryBot.create(:task)
end

def build_task
  @task ||= FactoryBot.build(:task)
end

def new_task(delegated="")
  
  visit new_task_path
  build_task
  build_user
  
  fill_in("task[title]", with: @task[:title])
  fill_in("task[description]", with: @task[:description])
  select(delegated, :from => 'task[delegated]')
  
  click_on 'Criar Tarefa'
  
  Task.where(title: @task[:title]).last
end

end

World(LoginHelper)