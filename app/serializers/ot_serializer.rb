class OtSerializer < ActiveModel::Serializer
  attributes :id, :start_time, :user, :end_time, :project, :description, :time_requests

  def user
    object.user
  end

  def project
    object.project
  end

  def time_requests
    ActiveModel::Serializer::CollectionSerializer.new(
      object.time_requests, each_serializer: TimeRequestSerializer)
  end
end
