require 'test_helper'

class PvModulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pv_module = pv_modules(:one)
  end

  test "should get index" do
    get pv_modules_url
    assert_response :success
  end

  test "should get new" do
    get new_pv_module_url
    assert_response :success
  end

  test "should create pv_module" do
    assert_difference('PvModule.count') do
      post pv_modules_url, params: { pv_module: { i_coeff: @pv_module.i_coeff, mppt_current: @pv_module.mppt_current, mppt_voltage: @pv_module.mppt_voltage, nominal_power: @pv_module.nominal_power, open_voltage: @pv_module.open_voltage, producent_name: @pv_module.producent_name, product_name: @pv_module.product_name, sc_current: @pv_module.sc_current, u_coeff: @pv_module.u_coeff } }
    end

    assert_redirected_to pv_module_url(PvModule.last)
  end

  test "should show pv_module" do
    get pv_module_url(@pv_module)
    assert_response :success
  end

  test "should get edit" do
    get edit_pv_module_url(@pv_module)
    assert_response :success
  end

  test "should update pv_module" do
    patch pv_module_url(@pv_module), params: { pv_module: { i_coeff: @pv_module.i_coeff, mppt_current: @pv_module.mppt_current, mppt_voltage: @pv_module.mppt_voltage, nominal_power: @pv_module.nominal_power, open_voltage: @pv_module.open_voltage, producent_name: @pv_module.producent_name, product_name: @pv_module.product_name, sc_current: @pv_module.sc_current, u_coeff: @pv_module.u_coeff } }
    assert_redirected_to pv_module_url(@pv_module)
  end

  test "should destroy pv_module" do
    assert_difference('PvModule.count', -1) do
      delete pv_module_url(@pv_module)
    end

    assert_redirected_to pv_modules_url
  end
end
