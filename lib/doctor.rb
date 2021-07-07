#The Doctor model:
#A doctor should be initialized with a name and an empty @appointments array.
#The Doctor class needs an instance method, #add_appointment, that takes in an instance of the Appointment class and adds that appointment to the doctor's @appointments array. The method should also tell that appointment that it belongs to that doctor.
#The Doctor class needs an instance method, #appointments, that returns the @appointments array.
#The Doctor class needs an instance method, #patients, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.

class Doctor
  attr_accessor :name, :patient
  attr_reader :appointments

  def initialize(name)
    @name = name
    @appointments = []
    end

    def add_appointment(appointment)
      @appointments << appointment
      appointment.doctor = self
    end

    def patients
    self.appointments.collect {|appointment| appointment.patient}
   end
   end
