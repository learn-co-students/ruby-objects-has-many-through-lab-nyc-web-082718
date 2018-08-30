class Patient

  @@all = []

  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end

  def appointments
    Appointment.all.select do |app|
      app.patient == self
    end.uniq
  end

  def doctors
    appointments.map do |app|
      app.doctor
    end.uniq
  end 
end
