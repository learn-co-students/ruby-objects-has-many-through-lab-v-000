class Doctor

  attr_accessor = :name, :appointments, :patients

  @@all = [];

  def initialize(name)
    @name = name;
    @appointments = [];
    @patients = [];
    @@all << self;
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date);
  end

  def name
    @name;
  end

  def appointments
    @appointments;
  end

  def patients
    appointments.map { |appointment| appointment.patient}
  end

  def self.all
    @@all;
  end
end
