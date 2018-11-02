module TasksHelper
  def find_user_name(user_id)
    name = User.find(user_id).name if not user_id.blank?
    
    rescue ActiveRecord::RecordNotFound
      # retorna vazio se houver erro no find
      return ""  
    
    name
  end
end
