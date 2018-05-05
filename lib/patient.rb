class Patient

attr_accessor :name, :add_appointment

def initialize(name)
  @name = name
end

def doctors
  self.appointments.collect do |appointment|
    appointment.doctor
  end
end

end
