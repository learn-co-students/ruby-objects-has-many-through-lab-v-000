class Patient
  attr_accessor :name, :doctors, :appointments

  def initialize(name)
    @name = name;
    @appointments = [];
    @doctors = [];
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    @appointments.map{|appointment| appointment.doctor}
  end
end
