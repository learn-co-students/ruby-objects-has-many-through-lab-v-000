require_relative './config/environment'
require 'rake'
require 'rspec/core/rake_task'
puts "Welcome to "

def reload!
  load_all './lib'
  load_all '../spec'
  load './lib/appointment.rb'
  load './lib/artist.rb'
  load './lib/doctor.rb'
  load './lib/genre.rb'
  load './lib/patient.rb'
  load './lib/song.rb'
  # load '../spec/artist_spec.rb'
  # load '../spec/song_spec.rb'
  # load '../spec/genre_spec.rb'
  # load '../spec/doctor_spec.rb'
  # load '../spec/appointment_spec.rb'
  # load '../spec/patient_spec.rb'

end

desc "A console"
task :console do
  Pry.start
end