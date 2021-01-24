class Slot
  attr_accessor :id, :vehicle, :type

  def initialize (id, type=nil)
    @id = id.to_i
    @type = type
  end

  def free?
    self.vehicle == nil
  end

end