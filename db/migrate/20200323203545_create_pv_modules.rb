class CreatePvModules < ActiveRecord::Migration[6.0]
  def change
    create_table :pv_modules do |t|
      t.string :product_name
      t.string :producent_name
      t.integer :nominal_power
      t.decimal :open_voltage
      t.decimal :mppt_voltage
      t.decimal :mppt_current
      t.decimal :sc_current
      t.decimal :i_coeff
      t.decimal :u_coeff

      t.timestamps
    end
  end
end
