require_relative './slots'
require_relative './find_free_slot'
require_relative './print_status'
require_relative './park'
require_relative './unpark'
require_relative './vehical_finder'

class ParkingSpace

  attr_accessor :slots
  PARKING_FULL_MESSAGE = 'Sorry, parking lot is full for %s'

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

  def park(vehicle_number, vehicle_type)
    free_slot = FindFreeSlot.new.find_parking_slot(slots, vehicle_type)
    puts "Parking #{vehicle_type} - #{vehicle_number}"
    if free_slot
      Park.new.park_my_vehicle(vehicle_number, vehicle_type, free_slot)
    else
      parking_lot_full_handler(vehicle_type)
    end
  end

  def unpark(slot_number)
    Unpark.new(slots, slot_number).unpark
  end

  def slot_number_for_registration_number (vehicle_number)
    VehicalFinder.new(slots).find_slot(vehicle_number)
  end

  private

  def parking_lot_full_handler(vehicle_type)
    puts ParkingSpace::PARKING_FULL_MESSAGE % [vehicle_type]
    puts
  end

end
