class Doctor
  attr_accessor :name

  def initialize(name)
    @appointments =[]
    @name = name
  end

  def appointments
    @appointments
  end

  def add_appointment(appt)
    @appointments << appt
    appt.doctor = self
  end

  def patients
    self.appointments.collect do |a|
      a.patient
    end
  end
end