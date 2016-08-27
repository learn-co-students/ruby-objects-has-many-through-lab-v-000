class Appointment
    attr_accessor :name, :doctor, :patient

    def initialize(name, doctor)
        @name = name
        @doctor = doctor
        doctor.add_appointment(self)  #tells new appointment that it belongs to the doctor passed in as argument and tells doctor that he now has this appoint in its collection of appoints
    end
end
