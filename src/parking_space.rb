require_relative './slots'
require_relative './find_free_slot'
require_relative './print_status'
class ParkingSpace

  attr_accessor :slots

  def initialize(number_of_slots)
    @slots = []
    number_of_slots.to_i.times do |index|
      slot_number = index + 1
      slots[index] = Slot.new(slot_number)
    end
    puts "Created a parking lot with #{ number_of_slots } slots"
  end

  def status
    PrintStatus.new(slots).print_status
  end

end
