class Patient

  attr_accessor :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(date)
    @appointments << date
  end

  def appointments
    @appointments
  end
end
