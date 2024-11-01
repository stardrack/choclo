require "application_system_test_case"

class ComentariosTest < ApplicationSystemTestCase
  setup do
    @comentario = comentarios(:one)
  end

  test "visiting the index" do
    visit comentarios_url
    assert_selector "h1", text: "Comentarios"
  end

  test "should create comentario" do
    visit comentarios_url
    click_on "New comentario"

    fill_in "Aprobado por", with: @comentario.aprobado_por
    fill_in "Autor", with: @comentario.autor
    fill_in "Contenido", with: @comentario.contenido
    fill_in "Fecha", with: @comentario.fecha
    fill_in "Genero", with: @comentario.genero
    fill_in "Respuesta", with: @comentario.respuesta
    click_on "Create Comentario"

    assert_text "Comentario was successfully created"
    click_on "Back"
  end

  test "should update Comentario" do
    visit comentario_url(@comentario)
    click_on "Edit this comentario", match: :first

    fill_in "Aprobado por", with: @comentario.aprobado_por
    fill_in "Autor", with: @comentario.autor
    fill_in "Contenido", with: @comentario.contenido
    fill_in "Fecha", with: @comentario.fecha
    fill_in "Genero", with: @comentario.genero
    fill_in "Respuesta", with: @comentario.respuesta
    click_on "Update Comentario"

    assert_text "Comentario was successfully updated"
    click_on "Back"
  end

  test "should destroy Comentario" do
    visit comentario_url(@comentario)
    click_on "Destroy this comentario", match: :first

    assert_text "Comentario was successfully destroyed"
  end
end
