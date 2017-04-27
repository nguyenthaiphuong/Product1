class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :chatwork_id, :dept, :position, :phone

  def dept
    object.dept
  end

  def position
    object.position
  end
end
