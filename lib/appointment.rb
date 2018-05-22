class Appointment
  attr_accessor :date,:doctor, :patient

  def initialize(date, doctor)
    self.doctor = doctor
    self.date = date
    self.doctor.add_appointment(self) #expect(doctor_who.appointments).to include(appointment)
  end

end