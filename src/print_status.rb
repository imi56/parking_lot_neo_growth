class PrintStatus
	def initialize slots
		@slots = slots
	end

	def print_status
		puts "Slot No.\t Registration No\t Type\tSlot free?\tSlot type"
		@slots.each do | slot |
			if slot.free?
				puts "#{ slot.id }\t\t N/A\t\t N/A\t\t yes\t\t#{ slot.type }"
			else
				puts "#{ slot.id }\t\t #{ slot.vehicle_number }\t\t #{ slot.vehicle_type }\t\t no\t\t#{ slot.type }"
			end
		end
	end
end
