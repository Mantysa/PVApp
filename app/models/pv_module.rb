class PvModule < ApplicationRecord
	belongs_to :user

	validates :producer_name, presence: true
	validates :product_name, presence: true
	validates :nominal_power, presence: true, numericality: { greater_than: 0}
	validates :open_voltage, presence: true, numericality: { greater_than: 0}
	validates :mppt_voltage, presence: true, numericality: { greater_than: 0}
	validates :mppt_current, presence: true, numericality: { greater_than: 0}
	validates :sc_current, presence: true, numericality: { greater_than: 0}
	validates :i_coeff, presence: true, numericality: { greater_than: 0, less_than: 1}
	validates :u_coeff, presence: true, numericality: { less_than: 0, greater_than: -1}
end
