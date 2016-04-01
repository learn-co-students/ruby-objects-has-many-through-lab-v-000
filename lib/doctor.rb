class Doctor
  require 'pry'
    attr_accessor :name
#   A doctor should be initialized with a name and an empty @appointments array.
      def initialize(name)
        @name = name
        @appointments = []
 
      end


    #returns the @appointments array.
  def appointments
    @appointments
  end
 # binding.pry

 
  def add_appointment(appointment)
    @appointments << appointment
   appointment.doctor = self
  end

 # binding.pry 
   
  def patients
#     self.appointments.collect do |appointment|
#     appointment.patient
#     end

    self.appointments.collect {|appointment| appointment.patient}

  end


end