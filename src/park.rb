class Park
	def park_my_vehicle(vehicle_number, vehicle_type, slot)
		puts "Allocated slot number: #{ slot.id }"
		slot.park(vehicle_number, vehicle_type)
	end
end