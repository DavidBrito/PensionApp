module ApplicationHelper
  def find_user_name(user_id)
    name = User.find(user_id).name if not user_id.blank?
    
    rescue ActiveRecord::RecordNotFound
      # retorna vazio se houver erro no find
      return ""  
    
    name
  end
  
  def find_property_name(id)
    name = Property.find(id).name if not id.blank?
    
    rescue
    ActiveRecord::RecordNotFound
      # retorna vazio se houver erro no find
      return ""  
    
  end
end
