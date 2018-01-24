#doctor has many patients through appointments
#doctor has many appointments
class Doctor
attr_accessor :name
  def initialize(name)
    @name = name
    @appointments = []
    #remember every time we initialize a collection, we need a reader for that collection
  end

#a method to build the has many through relationship
#this method returns patients by going through appointments
  def patients
    @appointments.collect do |appt|
      appt.patient
    end
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
  end

  def appointments
    @appointments
  end

end
