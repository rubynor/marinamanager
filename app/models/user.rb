class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # TODO: Validering
  # validates :first_name, :last_name, :email, :phone_number,
  #           :street_name, :street_number, :post_code, presence: true
  # validates :email, uniqueness: true

  has_many :boats
  has_many :berth_orders, through: :boats

  def admin?
    user_level == 1
  end

end