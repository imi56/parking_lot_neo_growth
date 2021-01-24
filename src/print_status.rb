class PrintStatus
	def initialize slots
		@slots = slots
	end

	def print_status
		puts "Slot No.\t Registration No\t Vehical type\tSlot type"
		@slots.each do | slot |
			puts "#{ slot.id }\t\t #{ slot.vehicle_number || 'Not Applicable' }\t\t #{ slot.vehicle_type || 'N/A'}\t\t#{ slot.type }" unless slot.free?
		end
	end
end
