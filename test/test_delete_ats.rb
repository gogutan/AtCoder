require 'test/unit'
require_relative '../lib/delete_ats.rb'

class TestDeleteAts < Test::Unit::TestCase
  def setup
    @array = [3, 6, 1, 9, 7, 8]
  end

  def test_delete_ats_4
    @array.delete_ats_4([0, 3, 5])
    assert_equal @array, [6, 1, 7]
  end

  def test_delete_ats_4_when_including_exceeding_index
    @array.delete_ats_4([0, 3, 5, 6])
    assert_equal @array, [6, 1, 7]
  end

  def test_delete_ats_4_when_index_is_empty
    @array.delete_ats_4([])
    assert_equal @array, [3, 6, 1, 9, 7, 8]
  end
end
