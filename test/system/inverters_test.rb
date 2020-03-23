require "application_system_test_case"

class InvertersTest < ApplicationSystemTestCase
  setup do
    @inverter = inverters(:one)
  end

  test "visiting the index" do
    visit inverters_url
    assert_selector "h1", text: "Inverters"
  end

  test "creating a Inverter" do
    visit inverters_url
    click_on "New Inverter"

    fill_in "Max current", with: @inverter.max_current
    fill_in "Max voltage", with: @inverter.max_voltage
    fill_in "Min voltage", with: @inverter.min_voltage
    fill_in "Mppt count", with: @inverter.mppt_count
    fill_in "Mppt max voltage", with: @inverter.mppt_max_voltage
    fill_in "Mppt min voltage", with: @inverter.mppt_min_voltage
    fill_in "Nominal power", with: @inverter.nominal_power
    fill_in "Producer name", with: @inverter.producer_name
    fill_in "Product name", with: @inverter.product_name
    fill_in "Start voltage", with: @inverter.start_voltage
    fill_in "Str count", with: @inverter.str_count
    click_on "Create Inverter"

    assert_text "Inverter was successfully created"
    click_on "Back"
  end

  test "updating a Inverter" do
    visit inverters_url
    click_on "Edit", match: :first

    fill_in "Max current", with: @inverter.max_current
    fill_in "Max voltage", with: @inverter.max_voltage
    fill_in "Min voltage", with: @inverter.min_voltage
    fill_in "Mppt count", with: @inverter.mppt_count
    fill_in "Mppt max voltage", with: @inverter.mppt_max_voltage
    fill_in "Mppt min voltage", with: @inverter.mppt_min_voltage
    fill_in "Nominal power", with: @inverter.nominal_power
    fill_in "Producer name", with: @inverter.producer_name
    fill_in "Product name", with: @inverter.product_name
    fill_in "Start voltage", with: @inverter.start_voltage
    fill_in "Str count", with: @inverter.str_count
    click_on "Update Inverter"

    assert_text "Inverter was successfully updated"
    click_on "Back"
  end

  test "destroying a Inverter" do
    visit inverters_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Inverter was successfully destroyed"
  end
end
