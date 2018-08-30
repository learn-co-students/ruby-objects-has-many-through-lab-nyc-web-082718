require "pry"

class Appointment
  @@all = []

  attr_reader :patient, :doctor, :date

  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date

  # add to Appointment.all
    @@all << self

  # add to patient lists
    patient.doctors << doctor
    patient.appointments << self

  # add to doctor lists
    doctor.patients << patient
    doctor.appointments << self
  end

  def self.all
    @@all
  end
end
