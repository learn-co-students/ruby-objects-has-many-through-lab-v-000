require 'pry'
class Patient

      attr_accessor :patient, :name


    def initialize(name)
      @name = name
      @appointments = []
    end

  def add_appointment(appointment)
    #binding.pry
    @appointments << appointment
    appointment.patient = self
  end

  def appointments
    @appointments
  end

  def doctors
    @appointments.collect do|appointment|
    appointment.doctor
    end
  end

end