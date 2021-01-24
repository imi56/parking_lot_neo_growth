class FindFreeSlot
	def find_parking_slot(slots, vehical_type)
		slots.find do |slot|
			slot.free?(vehical_type)
		end
	end
end