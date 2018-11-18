class Appointment #belongs to patients and doctors
   attr_accessor :date, :patient, :doctor
   @@all = []

   def initialize(date, patient, doctor)
     @patient = patient
     @date = date
     @doctor = doctor
     @@all << self
   end

   def self.all
     @@all
   end
 end
