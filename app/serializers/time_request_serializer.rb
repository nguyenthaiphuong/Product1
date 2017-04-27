class TimeRequestSerializer < ActiveModel::Serializer
  attributes :id, :user, :start_time, :end_time

  def user
    object.user
  end
end
