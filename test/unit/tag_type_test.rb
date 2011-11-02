require 'test_helper'

class TagTypeTest < ActiveSupport::TestCase
  
  test "the truth" do
    assert true
  end

  test "retrieve " do
    tag_type = TagType.where(name:tag_types(:one).name)
    assert_not_nil tag_type
  end

end
