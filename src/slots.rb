require_relative './vehicle'
class VehicleAlreadyParked < StandardError;end
class VehicleSlotMismatch < StandardError;end
class Slot
  attr_accessor :id, :vehicle, :type

  def initialize (id, type)
    @id = id.to_i
    @type = type
  end

  def free?(vehical_type=nil)
    self.vehicle == nil && self.type == vehical_type
  end

  def park(vehicle_number, vehicle_type)
    if self.vehicle
      raise VehicleAlreadyParked
    elsif vehicle_type.downcase != self.type&.downcase
      raise VehicleSlotMismatch
    else
      self.vehicle = ::Vehicle.new(vehicle_number, vehicle_type)
    end
  end

  def vehicle_number
    vehicle.vehicle_number if vehicle
  end

  def vehicle_type
    vehicle.vehicle_type if vehicle
  end

  def free
    self.vehicle = nil
  end

end