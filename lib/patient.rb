class Patient
attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
  end
  def add_appointment(date)
    @appointments << date
       date.patient = self
  end
  def doctors
    self.appointments.collect do |appointment|
     appointment.doctor
   end
  end
  def appointments
    @appointments
  end
end
