class  Patient
    attr_accessor :name, :appointments
    def initialize(name)
        @name = name
        @appointments = []
    end
    def add_appointment(appointment)
        @appointments << appointment
        appointment.patient = self
    end
    def doctors
        @appointments.collect do |appointment|
            appointment.doctor
        end
     end

end
#The Patient class needs an instance method, 
#doctors, that iterates over that patient's 
#appointments and collects the doctor that belongs
# to each appointment.