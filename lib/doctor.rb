class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def appointments
      Appointment.all.select do |appt|
      appt.doctor == self
    end
  end

  def patients
      appointments.map do |appt|
        appt.patient
      end
  end


end


=begin

The `Doctor` class needs a class variable `@@all` that begins as an empty array.
* The `Doctor` class needs a class method `.all` that lists each artist in the class variable.
* A doctor should be initialized with a name and be saved in the `@@all` array.
* The `Doctor` class needs an instance method, `#new_appointment`, that takes in a date and an instance of the `Patient` class and creates a new appointment. That appointment should know that it belongs to the doctor
* The `Doctor` class needs an instance method, `#appointments`, that iterates through all appointments and finds those belonging to this doctor.
* The `Doctor` class needs an instance method, `#patients`, that iterates over that doctor's appointments and collects the patient that belongs to each appointment.

=end
