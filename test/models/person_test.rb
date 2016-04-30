require 'test_helper'
require 'pry'


class PersonTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "person can have taks" do
    assert_includes people(:melissa).tasks, tasks(:go_to_brunch)
  end

  test "Swipe letter in the title" do
    assert_equal "avid, M", people(:david).display_name
  end

  test "negative test" do
    assert_equal people(:melissa).name, people(:melissa).display_name
  end

  test "display name for an artist with no name should be an empty string" do
    assert_equal "", Person.new.display_name
  end

  test "display anme for YY shoud be YY" do
  assert_equal tasks(:testperson).name, tasks(:testperson).display_name
  end
end
