class Doctor

  attr_reader :appointments
  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []

  end

end
