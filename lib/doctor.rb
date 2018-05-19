class Doctor

  attr_accessor :name, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(date,patient)
    @date = date
    patient = Patient.new(name)
    Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.collect do |appointments|
      appointments.doctor
    end
  end

end
