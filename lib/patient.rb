class Patient

  @@all = []

attr_accessor :name, :patient

  def initialize(name)
    @name = name
    @@all << self
  end

  def doctors
    Appointment.all.collect {|appointments| appointments.doctor }
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def appointments
    Appointment.all.select { |appointments| appointments.patient }
  end

end
