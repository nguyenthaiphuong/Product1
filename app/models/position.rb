class Position < ApplicationRecord
  has_many :users, dependent: :destroy

  validates :name, presence: true, length: {maximum: Settings.maximum.name}
end
