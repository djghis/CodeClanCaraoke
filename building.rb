class Building

  attr_reader :name, :till, :entry_fee


  def initialize(name)
    @name = name
    @till = 0
    @entry_fee = 10
  end


end
