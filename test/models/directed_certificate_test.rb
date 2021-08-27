require "test_helper"

class DirectedCertificateTest < ActiveSupport::TestCase
  test 'No debe guardar certificado dirigido sin descripcion' do
    description = DirectedCertificate.new
    assert_not description.save, 'Se guardó el certificado dirigido sin descripción.'
  end
end
