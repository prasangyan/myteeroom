require 'test_helper'

class TeeCreatorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def test_name
    teeCreator = TeeCreator.create(:firstName => 'Prashant', :lastName => 'Angyan')
    assert_equal 'Prashant Angyan', teeCreator.name
  end
end
