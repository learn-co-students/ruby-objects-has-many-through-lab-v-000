class Appointment
  attr_accessor :name, :doctor, :date, :patient
  @@all = []

#you must create the initialize methods in doctor and patient first - so that
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all
  end
end


=begin

* The `Appointment` class needs a class variable `@@all` that begins as an empty array.
* The `Appointment` class needs a class method `.all` that lists each artist in the class variable.
* An appointment should be initialized with a date (as a string, like `"Monday, August 1st"`), a patient, and a doctor. The appointment should be saved in the `@@all` array.

=end
