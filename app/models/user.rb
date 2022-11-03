class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy

  enum role: [:user, :moderator, :admin]
  after_initialize :set_defaulet_role, :if => :new_record?
  def set_defaulet_role
    self.role ||= :user
  end
  has_many :posts
end
