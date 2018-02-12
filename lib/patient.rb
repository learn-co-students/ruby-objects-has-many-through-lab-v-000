class Patient

  attr_accessor :name

#when a patient is created, it has a name and an empty list of appointments
  def initialize(name)
    @name = name
    @appointments = []
  end

#this method is called by ? (either explicity by a patient instance or through another instance method in another class)
#it adds an appointment to the appointment list and it assigns the appointment's patient attribute to the current instance of the patient
#when you add the appointment to the list, it already has a reference to the doctor, it already has the doctor instance as an attribute
  def add_appointment(appointment)
    @appointments << appointment
    appointment.patient = self
    #when you create an appt for a patient, you assign the appointment.patient attribute to the current instance of the patient
  end

  def appointments
      @appointments
  end

  def doctors()
    @appointments.collect do|appointment|
      appointment.doctor
    end
  end


end
