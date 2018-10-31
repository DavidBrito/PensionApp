module TasksHelper
  def delegated_name(user_id)
    # TODO: A função deve retonar um nome
    User.find(user_id).email
  end
end
