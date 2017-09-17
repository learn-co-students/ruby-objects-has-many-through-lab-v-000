class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  # def name
  #   @name
  # end

  def appointments
    @appointments
  end

  def add_appointment(appt)
    appointments << appt
    appt.doctor = self
  end

  def patients
    appointments.collect {|appt| appt.patient}
  end
end
