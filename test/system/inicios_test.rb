require "application_system_test_case"

class IniciosTest < ApplicationSystemTestCase
  setup do
    @inicio = inicios(:one)
  end

  test "visiting the index" do
    visit inicios_url
    assert_selector "h1", text: "Inicios"
  end

  test "should create inicio" do
    visit inicios_url
    click_on "New inicio"

    fill_in "Direccion", with: @inicio.direccion
    fill_in "Email", with: @inicio.email
    fill_in "Fecha", with: @inicio.fecha
    fill_in "Genero", with: @inicio.genero
    fill_in "Nombre", with: @inicio.nombre
    fill_in "Telefono", with: @inicio.telefono
    click_on "Create Inicio"

    assert_text "Inicio was successfully created"
    click_on "Back"
  end

  test "should update Inicio" do
    visit inicio_url(@inicio)
    click_on "Edit this inicio", match: :first

    fill_in "Direccion", with: @inicio.direccion
    fill_in "Email", with: @inicio.email
    fill_in "Fecha", with: @inicio.fecha
    fill_in "Genero", with: @inicio.genero
    fill_in "Nombre", with: @inicio.nombre
    fill_in "Telefono", with: @inicio.telefono
    click_on "Update Inicio"

    assert_text "Inicio was successfully updated"
    click_on "Back"
  end

  test "should destroy Inicio" do
    visit inicio_url(@inicio)
    click_on "Destroy this inicio", match: :first

    assert_text "Inicio was successfully destroyed"
  end
end
