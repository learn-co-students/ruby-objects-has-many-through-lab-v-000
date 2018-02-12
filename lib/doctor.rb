class Doctor

  attr_accessor :name

#when a doctor is created it has a name and an empty list of appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

#when this method is called, it adds an appointment to the appointment list
  def add_appointment(appointment)
    @appointments << appointment
    #The method should also tell that appointment that it belongs to that doctor.
    #the appointment knows about the doctor, creates the relationship between doctor and appt.
    #appointment.doctor = self
  end

  def appointments
    @appointments
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
    end
  end


end
