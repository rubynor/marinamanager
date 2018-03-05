class User < ApplicationRecord
  has_many :services, through: :service_orders
  has_many :berths, through: :berth_orders
  has_many :boats, dependent: :destroy

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :first_name, :last_name, :email, :phone_number,
            :street_name, :street_number, :post_code, presence: true
  validates :email, uniqueness: true


end
