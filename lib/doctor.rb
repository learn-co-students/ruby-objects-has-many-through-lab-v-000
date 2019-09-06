class Doctor
  attr_accessor :appointments
  attr_reader :name


  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    self.appointments << appointment
  end

  def patients
    self.appointments.collect do |appointment|
      appointment.patient
    end
  end

  # def appointments
  #   @appointments
  # end



end
