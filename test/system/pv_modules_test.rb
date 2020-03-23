require "application_system_test_case"

class PvModulesTest < ApplicationSystemTestCase
  setup do
    @pv_module = pv_modules(:one)
  end

  test "visiting the index" do
    visit pv_modules_url
    assert_selector "h1", text: "Pv Modules"
  end

  test "creating a Pv module" do
    visit pv_modules_url
    click_on "New Pv Module"

    fill_in "I coeff", with: @pv_module.i_coeff
    fill_in "Mppt current", with: @pv_module.mppt_current
    fill_in "Mppt voltage", with: @pv_module.mppt_voltage
    fill_in "Nominal power", with: @pv_module.nominal_power
    fill_in "Open voltage", with: @pv_module.open_voltage
    fill_in "Producent name", with: @pv_module.producent_name
    fill_in "Product name", with: @pv_module.product_name
    fill_in "Sc current", with: @pv_module.sc_current
    fill_in "U coeff", with: @pv_module.u_coeff
    click_on "Create Pv module"

    assert_text "Pv module was successfully created"
    click_on "Back"
  end

  test "updating a Pv module" do
    visit pv_modules_url
    click_on "Edit", match: :first

    fill_in "I coeff", with: @pv_module.i_coeff
    fill_in "Mppt current", with: @pv_module.mppt_current
    fill_in "Mppt voltage", with: @pv_module.mppt_voltage
    fill_in "Nominal power", with: @pv_module.nominal_power
    fill_in "Open voltage", with: @pv_module.open_voltage
    fill_in "Producent name", with: @pv_module.producent_name
    fill_in "Product name", with: @pv_module.product_name
    fill_in "Sc current", with: @pv_module.sc_current
    fill_in "U coeff", with: @pv_module.u_coeff
    click_on "Update Pv module"

    assert_text "Pv module was successfully updated"
    click_on "Back"
  end

  test "destroying a Pv module" do
    visit pv_modules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pv module was successfully destroyed"
  end
end
