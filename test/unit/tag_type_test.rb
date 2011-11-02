require 'test_helper'

class TagTypeTest < ActiveSupport::TestCase
  
  test "the truth" do
    assert true
  end

  test "retrieve " do
    tag_type = TagType.where(tag_type:tag_types(:one).tag_type)
    assert_not_nil tag_type
  end

end
