class Ot < ApplicationRecord
  belongs_to :project
  belongs_to :user

  has_many :time_requests, dependent: :destroy

  validates :project_id, presence: true
  validates :user_id, presence: true
  validates :description, presence: true, length: {maximum: Settings.maximum.description}
end
