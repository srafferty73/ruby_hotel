require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class RoomTest < MiniTest::Test

  def setup
    @guest1 = Guest.new("Stephen")
    @guest2 = Guest.new("Keith")
    @room1 = Room.new("one", 2,[])
    @room2 = Room.new("two", 1, [@guest1])
  end

  def test_room_name
    assert_equal("one", @room1.name)
  end

  def test_room_capacity
    assert_equal(2, @room1.capacity)
  end

  def test_guests_getter
    assert_equal([], @room1.guests)
  end

  def test_can_count_guest__empty
    assert_equal(0, @room1.guest_count)
  end

  def test_can_count_guest__not_empty
    assert_equal(1, @room2.guest_count)
  end

  def test_can_add_guest
    @room1.add_guest(@guest2)
    assert_equal("Keith", @room1.guests[0].name)
  end

  def test_can_remove_guest
    @room1.add_guest(@guest2)
    @room1.remove_guest(@guest2)
    assert_equal([], @room1.guests)
  end

end
