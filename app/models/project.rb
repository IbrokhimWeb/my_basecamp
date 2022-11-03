class Project < ApplicationRecord
  belongs_to :user
  validates :name, presence: true
  validates :description, presence: true

  has_many :tasks, dependent: :destroy
  has_many :upls, dependent: :destroy
  has_many :posts, dependent: :destroy

end
