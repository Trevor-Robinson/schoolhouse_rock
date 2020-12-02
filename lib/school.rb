class School
  attr_reader :start_time,
              :hours_in_school_day,
              :student_names

  def initialize(start_time, hours_in_school_day)
    @start_time = start_time
    @hours_in_school_day = hours_in_school_day
    @student_names = []
  end

  def add_student_name(name)
    student_names << name
  end

  def end_time
    time_array = start_time.split("")
    eod = time_array[0].to_i + hours_in_school_day
    time_array[0] = eod
    time_array.join
  end

  def is_full_time?
    if hours_in_school_day > 4
      full_time = true
    else
     full_time = false
   end
  end

  def standard_student_names
    standard_names = []
    student_names.each do |name|
    standard_names << name.capitalize
    end
    standard_names
  end
end
