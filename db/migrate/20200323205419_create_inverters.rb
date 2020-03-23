class CreateInverters < ActiveRecord::Migration[6.0]
  def change
    create_table :inverters do |t|
      t.string :product_name
      t.string :producer_name
      t.decimal :nominal_power
      t.decimal :max_voltage
      t.decimal :min_voltage
      t.decimal :mppt_max_voltage
      t.decimal :mppt_min_voltage
      t.decimal :start_voltage
      t.decimal :max_current
      t.integer :mppt_count
      t.integer :str_count

      t.timestamps
    end
  end
end
