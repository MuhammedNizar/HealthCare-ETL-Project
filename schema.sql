-- Table to store patient details
CREATE TABLE Patient (
    id INTEGER PRIMARY KEY NOT NULL,
    gender VARCHAR(10) NOT NULL,
    age DECIMAL(4,1) NOT NULL,
    hypertension INTEGER NOT NULL CHECK (hypertension IN (0, 1)),
    heart_disease INTEGER NOT NULL CHECK (heart_disease IN (0, 1)),
    ever_married VARCHAR(3) NOT NULL CHECK (ever_married IN ('Yes', 'No')),
    work_type VARCHAR(50) NOT NULL,
    residence_type VARCHAR(10) NOT NULL,
    avg_glucose_level DECIMAL(5,2) NOT NULL,
    bmi DECIMAL(4,1) NOT NULL,
    smoking_status VARCHAR(50),
    stroke INTEGER NOT NULL CHECK (stroke IN (0, 1))
);

-- Index to quickly search patients by gender and age
CREATE INDEX idx_patient_gender_age ON Patient (gender, age);

-- Index to quickly find patients by work type
CREATE INDEX idx_patient_work_type ON Patient (work_type);

-- Table to store aggregated statistics, if needed in future analysis
CREATE TABLE StrokeStatistics (
    age_group VARCHAR(20),
    bmi_category VARCHAR(20),
    stroke_count INTEGER NOT NULL,
    CONSTRAINT pk_StrokeStatistics PRIMARY KEY (age_group, bmi_category)
);

-- Example view to show patients who had a stroke
CREATE VIEW PatientsWithStroke AS
SELECT 
    id, gender, age, hypertension, heart_disease, ever_married, 
    work_type, residence_type, avg_glucose_level, bmi, smoking_status
FROM 
    Patient
WHERE 
    stroke = 1;

-- Example trigger to update a last_modified column (if you add one)
CREATE TRIGGER update_last_modified
BEFORE UPDATE ON Patient
FOR EACH ROW
BEGIN
    UPDATE Patient SET last_modified = CURRENT_TIMESTAMP WHERE id = NEW.id;
END;
