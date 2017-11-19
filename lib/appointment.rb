class Appointment
attr_accessor :doctor, :patient, :date
  def initialize (date, doctor)
    @date = date
    @doctor = doctor
    doctor.add_appointment(self) #must send instance to doctor.#add_appointment
  end


end
