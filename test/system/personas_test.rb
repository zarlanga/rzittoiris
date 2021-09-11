require "application_system_test_case"

class PersonasTest < ApplicationSystemTestCase
  setup do
    @persona = personas(:one)
  end

  test "visiting the index" do
    visit personas_url
    assert_selector "h1", text: "Personas"
  end

  test "creating a Persona" do
    visit personas_url
    click_on "New Persona"

    fill_in "Apellido", with: @persona.apellido
    fill_in "Fecha nacimiento", with: @persona.fecha_nacimiento
    fill_in "Nombre", with: @persona.nombre
    fill_in "Nrodni", with: @persona.nroDNI
    click_on "Create Persona"

    assert_text "Persona was successfully created"
    click_on "Back"
  end

  test "updating a Persona" do
    visit personas_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @persona.apellido
    fill_in "Fecha nacimiento", with: @persona.fecha_nacimiento
    fill_in "Nombre", with: @persona.nombre
    fill_in "Nrodni", with: @persona.nroDNI
    click_on "Update Persona"

    assert_text "Persona was successfully updated"
    click_on "Back"
  end

  test "destroying a Persona" do
    visit personas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Persona was successfully destroyed"
  end
end
