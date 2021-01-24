require_relative './slots'
require_relative './find_free_slot'
require_relative './print_status'
class ParkingSpace

  attr_accessor :slots

  def initialize(num_of_bike_slots, num_of_car_slots)
    num_of_slots = num_of_bike_slots + num_of_car_slots
    @slots = []
    num_of_slots.times do |index|
      slot_type = num_of_bike_slots > 0 ? 'bike' : 'car'
      num_of_bike_slots = num_of_bike_slots - 1
      slot_number = index + 1
      slots[index] = Slot.new(slot_number, slot_type)
    end
    puts "Created a parking lot with #{ num_of_slots } slots"
  end

  def status
    PrintStatus.new(slots).print_status
  end

end
