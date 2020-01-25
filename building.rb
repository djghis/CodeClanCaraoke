class Building

  attr_reader :name, :till, :entry_fee


  def initialize(name)
    @name = name
    @till = 0
    @entry_fee = 10
  end

  # def charge_fee
  #   @till += @entry_fee
  #
  # end


end
