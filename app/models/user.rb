class User < ApplicationRecord
	has_many :pv_modules
	has_many :inverters

	validates :name, presence: true, length: { in: 5..20 }
	validates :email, presence: true
end
