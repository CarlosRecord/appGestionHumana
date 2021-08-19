require "test_helper"

class TypeVacationTest < ActiveSupport::TestCase

  test "No debe guardar tipo vacaciones sin descripción" do
    description = TypeVacation.new
    assert_not description.save, "Se guardó el tipo vacaciones sin descripción."
  end

end
