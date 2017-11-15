class Appointment

    attr_accessor :date, :doctor, :patient

    def initialize(date, doctor)
        @date = date
        @doctor = doctor
        doctor.add_appointment(self)
    end

     #Do we need to do anything to associate the doctor and appointment?

end
    