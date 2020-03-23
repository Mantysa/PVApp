json.extract! pv_module, :id, :product_name, :producent_name, :nominal_power, :open_voltage, :mppt_voltage, :mppt_current, :sc_current, :i_coeff, :u_coeff, :created_at, :updated_at
json.url pv_module_url(pv_module, format: :json)
