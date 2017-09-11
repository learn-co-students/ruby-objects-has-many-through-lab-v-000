class Doctor

  attr_accessor :name

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment) #takes in an instance of Appointment class and adds that appointment to the doctor's appointments array. Mehtod tells that the appointment belongs to that doctor.
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments #returns @appointments array
    @appointments
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

end
