require 'test_helper'

class TypeVacationTest < ActiveSupport::TestCase

  test 'No debe guardar tipo vacaciones sin descripcion' do
    description = TypeVacation.new
    assert_not description.save, 'Se guardó el tipo vacaciones sin descripción.'
  end

  test 'No debe guardar tipo de vacaciones con descripcion muy corta' do
    vacacion = TypeVacation.new
    vacacion.description = "En lo que sea"
    assert_not vacacion.save, 'El tipo de vacaion se guardó a pesar de ser muy corto.'
  end


end
