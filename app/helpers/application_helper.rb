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
  
  def find_property_by_user(user)
    # dado um usuario
    query = %{
       SELECT p.id
       FROM properties p
       JOIN rooms r on r.property_id = p.id
       JOIN vacancies v on v.room_id = r.id
       WHERE v.user_id = #{user.id}
    }.squish 
    
    return Property.find_by_sql(query)
  end
  
end