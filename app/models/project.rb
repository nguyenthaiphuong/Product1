class Project < ApplicationRecord
  has_many :ots, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.maximum.name}
end
