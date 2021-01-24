class VehicalFinder

	def initialize slots
		@slots = slots
	end

	def find_slot(vehicle_number)
		slot = @slots.find do |slot|
      slot.vehicle_number == vehicle_number
    end
    puts slot ? "#{vehicle_number} is parked in slot #{slot.id}" : 'Not found'
	end
end
