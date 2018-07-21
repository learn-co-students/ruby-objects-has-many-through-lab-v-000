class Patient
  attr_accessor :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end


  def appointments
      Appointment.all.select do |appt|
      appt.patient == self
    end
  end

#this method acts like a lookup, allows you to iterate through results from appointments method (all patient's appointments)
#then return all the doctors names who belong to those appointments
  def doctors
      appointments.map do |appt|
        appt.doctor
      end
  end



end


=begin

* The `Patient` class needs a class variable `@@all` that begins as an empty array.
* The `Patient` class needs a class method `.all` that lists each artist in the class variable.
* A patient is instantiated with a name and be saved in the `@@all` array.
* The `Patient` class needs an instance method, `#new_appointment`, that takes in an argument of a doctor and a date and creates a new appointment. The appointment should know that it belongs to the patient.
* The `Patient` class needs an instance method, `#appointments`, that iterates through the appointments array and returns appointments that belong to the patient.
* The `Patient` class needs an instance method, `#doctors`, that iterates over that patient's appointments and collects the doctor that belongs to each appointment.

=end
