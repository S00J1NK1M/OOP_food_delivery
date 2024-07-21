class PatientRepository
  def initialize(csv_file, room_repository)
    @csv_file = csv_file
    @room_repository = room_repository
    @patients = []
    load_csv
  end

  def all
    @patients
  end

  def create(patient)
    # Assign an ID to the patient
    # Where the fuck is @next_id from?
    patient_id = @next_id

    # Increase the ID for the next patient
    @next_id += 1

    # Pushing the new patient to patients array
    @patients << patient

    # Save it to csv
    save_csv
  end

  def find
  end

  def destroy
  end

  private

  def load_csv
    # Get @patients from CSV
    # @ patients is an array
    @next_id = @patients.empty? 1 : @patients.last.id + 1
  end

  def save_csv
  end
end
