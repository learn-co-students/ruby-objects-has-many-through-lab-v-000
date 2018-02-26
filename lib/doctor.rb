class Doctor

  attr_accessor :name, :appointments, :appointment

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(new_appointment_intance)
    new_appointment_intance.doctor = self
    @appointments << new_appointment_intance
  end

  def patients
      self.appointments.collect do |appointment|
         appointment.patient
         #binding.pry
    end
    #binding.pry

  end
end
