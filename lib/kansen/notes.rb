class Kansen::Notes
  attr_reader :collection

  def initialize
    @collection = []
  end

  def <<(item)
    @collection << item
  end
end
