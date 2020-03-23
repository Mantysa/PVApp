class Inverter < ApplicationRecord
	belongs_to :user

	validates :producer_name, presence: true
	validates :product_name, presence: true
	validates :nominal_power, presence: true, numericality: { greater_than: 0}
	validates :max_voltage, presence: true, numericality: { greater_than: 0}
	validates :min_voltage, presence: true, numericality: { greater_than: 0}
	validates :mppt_max_voltage, presence: true, numericality: { greater_than: 0}
	validates :mppt_min_voltage, presence: true, numericality: { greater_than: 0}
	validates :start_voltage, presence: true, numericality: { greater_than: 0}
	validates :max_current, presence: true, numericality: { greater_than: 0}
	validates :mppt_count, presence: true, 
				numericality: { greater_than: 0, only_integer: true}
	validates :str_count, presence: true, 
				numericality: { greater_than: 0, only_integer: true}
end
