require "test_helper"

class TypePermissionTest < ActiveSupport::TestCase

  test 'No debe guardar tipo permiso sin descripcion' do
    description = TypePermission.new
    assert_not description.save, 'Se guardó el tipo de permiso sin descripción.'
  end

end
