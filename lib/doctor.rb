require 'pry'
 class Doctor

      attr_accessor :name

      def initialize(name)
        @name = name
        @appointments = []
      end

      def add_appointment(appointment)
        #adds a new appiontment to the doctor @appiontment array and
        # tells that appiontment hat it belongs to the doctor
        @appointments << appointment  #adds a new appointment to the doctor's @appointments array and tells that appointment that it belongs to the doctor
        appointment.doctor = self
      end

      def appointments
          @appointments
      end

      def patients  # has many patients, through appiontments
          self.appointments.collect do |appointment|
          appointment.patient
      end
    end
 end
