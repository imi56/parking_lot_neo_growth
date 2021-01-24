class Vehicle
  attr_accessor :vehicle_number, :vehicle_type

  def initialize(vehicle_number, vehicle_type)
    @vehicle_number = vehicle_number
    @vehicle_type = vehicle_type
  end
end