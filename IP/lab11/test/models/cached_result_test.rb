require 'test_helper'

class CachedResultTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # 
  test 'should error on non unique record' do
    instance1 = CachedResult.new()
    instance1.input = "1"
    instance1.result = "[[1]]"
    instance1.save!
    #instance.save!
    instance2 = instance1.dup
    #instance2.validate
    assert_raise do 
    	instance2.save!
    end
    #assert_equal false, instance2.valid?#instance.errors[:input], ['has already been taken']
  end
end
