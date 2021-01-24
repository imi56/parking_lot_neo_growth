require_relative './slots'
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

end
