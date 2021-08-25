require "test_helper"

class TypeRequestTest < ActiveSupport::TestCase
  
  test 'No debe guardar tipo solicitud sin descripcion' do
    description = TypeRequest.new
    assert_not description.save, 'Se guardó el tipo solicitud sin descripción.'
  
  end
end
