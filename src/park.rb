class Park
	def park_my_vehicle(vehicle_number, vehicle_type, slot)
		slot.park(vehicle_number, vehicle_type)
		puts "Allocated slot number: #{ slot.id }"
		puts
	end
end