class User < ApplicationRecord

  has_many :recipes
  belongs_to :role
  validates :name, presence: true
  validates :role_id, presence: true
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

    def is_admin?
    self.role.name == "admin"
    end
end
