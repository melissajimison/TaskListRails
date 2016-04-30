require 'test_helper'

class TaskTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "validations: task name can't ve blank" do
    #test is a method of ActiveSupport::TestCase
    #inside this block it is minitest
    task = Task.new
    #do and know all what Active record instance TAsk do
    assert_not task.valid?
    assert task.error.keys.include?(:name), "Name is not in the error hash"
  end
end
