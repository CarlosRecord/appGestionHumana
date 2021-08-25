require "test_helper"

class ReasonPermissionTest < ActiveSupport::TestCase

  test 'No debe guardar el motivo de permiso sin descripcion' do
    description = ReasonPermission.new
    assert_not description.save, 'Se guardó el motivo del permiso sin descripción.'
  end

end
