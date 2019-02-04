require "test_helper"

class GuestListTest < Minitest::Test
  def setup
    @guest_name = "John Doe"
    @event_name = "Jazz Game"
    @guest = GuestList::Guest.new @guest_name, 18
    @event = GuestList::Event.new @event_name

    @alice = GuestList::Guest.new "Alice", 18
    @bob = GuestList::Guest.new "Bob", 19
    @charlie = GuestList::Guest.new "Charlie", 21
    @donnie = GuestList::Guest.new "Donnie", 17
    @eric = GuestList::Guest.new "Eric", 25
    @frank = GuestList::Guest.new "Frank", 23
    @greg = GuestList::Guest.new "Greg", 21

    @ordered_guests = [
      @alice,
      @bob,
      @charlie,
      @donnie,
      @eric,
      @frank,
      @greg
    ]
    @printed_ordered_guest_list =
      "#{@alice.name},\n" +
      "#{@bob.name},\n" +
      "#{@charlie.name},\n" +
      "#{@donnie.name},\n" +
      "#{@eric.name},\n" +
      "#{@frank.name},\n" +
      "#{@greg.name}"
    @guests
    @event_with_guests = GuestList::Event.new "Super Bowl"
    @event_with_guests.instance_variable_set :@guests, @ordered_guests.shuffle
  end

  def test_that_it_has_a_version_number
    refute_nil ::GuestList::VERSION
  end

  def test_guest_has_name
    assert_equal @guest_name, @guest.name
  end
  
  def test_guest_does_not_have_commonly_named_methods_to_change_name
    refute @guest.respond_to? :name=
    refute @guest.respond_to? :set_name
  end

  def test_event_has_name
    assert_equal @event_name, @event.name
  end
  
  def test_event_has_guests
    refute_nil @event.guests
  end
  
  def test_adding_guest_to_event
    @event.add_guest @guest
    refute @event.guests.empty?
  end
  
  def test_guests_sorted_by_name
    assert_equal @ordered_guests, @event_with_guests.guest_list_sorted_by_name
  end
  
  def test_guests_allowed_alcoholic_beverages
    wine_tasting = GuestList::Event.new("wine tasting")
    wine_tasting.instance_variable_set :@guests, @ordered_guests
    drinking_age_guests = wine_tasting.guests_allowed_alcoholic_beverages
    assert drinking_age_guests.count == 4
    assert drinking_age_guests.include?(@charlie)
    assert drinking_age_guests.include?(@eric)
    assert drinking_age_guests.include?(@frank)
    assert drinking_age_guests.include?(@greg)
  end
  
  def test_print_ordered_guest_list
    assert_equal @printed_ordered_guest_list, @event_with_guests.print_guest_list_sorted_by_name
  end
  
  def test_oldest_guest
    assert_equal @eric, @event_with_guests.oldest_guest
  end
  
  def test_youngest_guest
    assert_equal @donnie, @event_with_guests.youngest_guest
  end
  
  def test_average_guest_age
    expected_average_guest_age = (@alice.age +
                                  @bob.age +
                                  @charlie.age +
                                  @donnie.age +
                                  @eric.age +
                                  @frank.age +
                                  @greg.age) / @ordered_guests.count
    assert_equal expected_average_guest_age, @event_with_guests.average_guest_age
  end
end
