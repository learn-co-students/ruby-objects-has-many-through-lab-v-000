class Patient
  attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(apppointment)
    @appointments << apppointment
    apppointment.patient = self
  end
  def appointments
    @appointments
  end
  def doctors
    @appointments.collect do |something|
      something.doctor
    end
  end
end
