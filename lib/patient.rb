class Patient

  attr_accessor :name, :doctor, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    @doctor = doctor
    @date = date
    Appointment.new(self, date, doctor)

  end

end
