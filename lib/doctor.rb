class Doctor

  attr_accessor :name
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments =[]
  end

end
