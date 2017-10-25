class Patient
#"artist" class
  attr_accessor :name

#initializes with a name
  def initialize(name)
    @name = name
    @appointments = []
  end

#takes an argument of an appointment and adds that appointment to it's list of appointments
    def add_appointment(appointment)
      @appointments << appointment
#tells that appointment it belongs to a patient
      appointment.patient = self
    end

#has many appointments
    def appointments
      @appointments
    end

#has many doctors through appointments
    def doctors
      self.appointments.collect do |appointment|
        appointment.doctor
      end
    end
end
