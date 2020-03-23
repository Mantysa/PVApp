require 'test_helper'

class InvertersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @inverter = inverters(:one)
  end

  test "should get index" do
    get inverters_url
    assert_response :success
  end

  test "should get new" do
    get new_inverter_url
    assert_response :success
  end

  test "should create inverter" do
    assert_difference('Inverter.count') do
      post inverters_url, params: { inverter: { max_current: @inverter.max_current, max_voltage: @inverter.max_voltage, min_voltage: @inverter.min_voltage, mppt_count: @inverter.mppt_count, mppt_max_voltage: @inverter.mppt_max_voltage, mppt_min_voltage: @inverter.mppt_min_voltage, nominal_power: @inverter.nominal_power, producer_name: @inverter.producer_name, product_name: @inverter.product_name, start_voltage: @inverter.start_voltage, str_count: @inverter.str_count } }
    end

    assert_redirected_to inverter_url(Inverter.last)
  end

  test "should show inverter" do
    get inverter_url(@inverter)
    assert_response :success
  end

  test "should get edit" do
    get edit_inverter_url(@inverter)
    assert_response :success
  end

  test "should update inverter" do
    patch inverter_url(@inverter), params: { inverter: { max_current: @inverter.max_current, max_voltage: @inverter.max_voltage, min_voltage: @inverter.min_voltage, mppt_count: @inverter.mppt_count, mppt_max_voltage: @inverter.mppt_max_voltage, mppt_min_voltage: @inverter.mppt_min_voltage, nominal_power: @inverter.nominal_power, producer_name: @inverter.producer_name, product_name: @inverter.product_name, start_voltage: @inverter.start_voltage, str_count: @inverter.str_count } }
    assert_redirected_to inverter_url(@inverter)
  end

  test "should destroy inverter" do
    assert_difference('Inverter.count', -1) do
      delete inverter_url(@inverter)
    end

    assert_redirected_to inverters_url
  end
end
