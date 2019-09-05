#doctor has many patients through appointments
#doctor has many appointments
=begin
A doctor should be initialized with a name and an empty @appointments array.
The Doctor class needs an instance method, #add_appointment, that takes in an
instance of the Appointment class and adds that appointment to the doctor's
@appointments array. The method should also tell that appointment that it belongs
to that doctor.

The Doctor class needs an instance method, #appointments, that returns the
@appointments array.

The Doctor class needs an instance method, #patients, that iterates over that
doctor's appointments and collects the patient that belongs to each appointment.
=end
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
    #we tell the appoint which doctor it belongs to
  end

  def appointments
    @appointments
  end

end
