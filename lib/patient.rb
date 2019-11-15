class Patient
    attr_accessor  :name
    @@all = []
    def initialize(name)
      @name= name
      @@all << self
    end
    def self.all
      @@all
    end
     def new_appointment(doctor,date)
    
         Appointment.new(self,doctor,date)
     end
    def appointments

       Appointment.all.select {|e| e.patient = self}  #get the app of the patient with all data
    end
    def doctors
      appointments.map { |e| e.doctor}
    end
end
