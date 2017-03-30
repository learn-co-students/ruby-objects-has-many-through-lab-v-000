class Doctor
  attr_accessor :name, :appointments, :patient

  def initialize(name)
    @name = name
    @appointments = []
    #binding.pry
  end

  def appointments
    @appointments
  end

  def add_appointment(appointment)
    @appointments << appointment
    appointment.doctor = self
    #binding.pry
  end

  def patients
    @appointments.collect do |appointment|
      appointment.patient
      #binding.pry
    end
  end
end
