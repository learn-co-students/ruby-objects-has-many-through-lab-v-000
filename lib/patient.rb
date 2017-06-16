class Patient
attr_reader :name, :appointments

  def initialize(name)
    @name = name
    @appointments = []
  end

  def add_appointment(appointment)
    @appointments.push(appointment)
    appointment.patient = self
  end

   def doctors
     appointments.map do |appointment|
       appointment.doctor
       end.uniq
     end
  end
