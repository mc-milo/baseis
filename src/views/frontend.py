from flask import render_template, request
import os


import views.backend as backend
import views.database_handle as handler

database = handler.database()

def index():
    return render_template("index.html", )

def doctors():
    id = request.args.get("id")
    name = request.args.get("name")
    phone1 = request.args.get("phone1")
    phone2 = request.args.get("phone2")
    email = request.args.get("email")
    spec = request.args.get("spec")
    exp = request.args.get("exp")

    filter = ""

    if id != None and id != "":
        filter += f"DoctorID = \"{id}\""
    if name != None and name != "":
        filter += f"FullName like \"%{name}%\""
    if phone1 != None and phone1 != "":
        filter += f"PhoneNumber1 = \"{phone1}\""
    if phone2 != None and phone2 != "":
        filter += f"PhoneNumber2 = \"{phone2}\""
    if email != None and email != "":
        filter += f"Email = \"{email}\""
    if spec != None and spec != "":
        filter += f"Profession = \"{spec}\""
    if exp != None and exp != "":
        filter += f"Experience = \"{exp}\""

    if filter != "":
        data = database.get_table("Doctor", filter)
    else:
        data = database.get_table("Doctor", None)

    return render_template("doctors.html", data=data)

def hospital():
    id = request.args.get("id")
    name = request.args.get("name")
    phone = request.args.get("phone")
    email = request.args.get("email")
    address = request.args.get("address")

    filter = ""

    if id != None and id != "":
        filter += f"InstitutionID = \"{id}\""
    if name != None and name != "":
        filter += f"InstitutionName like \"%{name}%\""
    if phone != None and phone != "":
        filter += f"ContactNumber = \"{phone}\""
    if email != None and email != "":
        filter += f"ContactEmail = \"{email}\""
    if address != None and address != "":
        filter += f"Location like \"%{address}%\""

    if filter != "":
        data = database.get_table("Institution", filter)
    else:
        data = database.get_table("Institution", None)

    return render_template("hospital.html", data=data)

def insurance():
    id = request.args.get("id")
    name = request.args.get("name")
    plan = request.args.get("plan")
    phone = request.args.get("phone")
    email = request.args.get("email")

    filter = ""

    if id != None and id != "":
        filter += f"InsuranceID = \"{id}\""
    if name != None and name != "":
        filter += f"InsuranceName like \"%{name}%\""
    if plan != None and plan != "":
        filter += f"InsurancePlansIDs = \"{plan}\""
    if phone != None and phone != "":
        filter += f"ContactNumber = \"{phone}\""
    if email != None and email != "":
        filter += f"ContactEmail = \"{email}\""

    if filter != "":
        data = database.get_table("Insurance", filter)
    else:
        data = database.get_table("Insurance", None)

    return render_template("insurance.html", data=data)

def medication():
    id = request.args.get("id")
    name = request.args.get("name")
    info = request.args.get("info")
    covered = request.args.get("covered")

    if id != None and id != "":
        filter += f"MedicationID = \"{id}\""
    if name != None and name != "":
        filter += f"MedicationName = \"{name}\""
    if info != None and info != "":
        filter += f"Information = \"{info}\""
    if covered != None and covered != "":
        filter += f"Covered = \"{covered}\""

    if filter != "":
        data = database.get_table("Medication", filter)
    else:
        data = database.get_table("Medication", None)

    return render_template("medication.html", data=data)

def patient():
    amka = request.args.get("amka")
    id = request.args.get("id")
    name = request.args.get("name")
    birth = request.args.get("birth")
    address = request.args.get("address")
    phone1 = request.args.get("phone1")
    phone2 = request.args.get("phone2")
    email = request.args.get("email")
    plan = request.args.get("plan")
    insurance = request.args.get("insurance")
    doctor = request.args.get("doctor")
    insuredby = request.args.get("insuredby")

    filter = ""

    if amka != None and amka != "":
        filter += f"AMKA = \"{amka}\""
    if id != None and id != "":
        filter += f"IDNumber = \"{id}\""
    if name != None and name != "":
        filter += f"FullName like \"%{name}%\""
    if birth != None and birth != "":
        filter += f"BirthDay = \"{birth}\""
    if address != None and address != "":
        filter += f"Address like \"%{address}%\""
    if phone1 != None and phone1 != "":
        filter += f"PhoneNumber1 = \"{phone1}\""
    if phone2 != None and phone2 != "":
        filter += f"PhoneNumber2 = \"{phone2}\""
    if email != None and email != "":
        filter += f"Email = \"{email}\""
    if insurance != None and insurance != "":
        filter += f"InsuranceID = \"{insurance}\""
    if plan != None and plan != "":
        filter += f"InsurancePlanID = \"{plan}\""
    if doctor != None and doctor != "":
        filter += f"PersonalDoctorID = \"{doctor}\""
    if insuredby != None and insuredby != "":
        filter += f"InsuredBy = \"{insuredby}\""

    if filter != "":
        data = database.get_table("Patient", filter)
    else:
        data = database.get_table("Patient", None)

    return render_template("patient.html", data=data)

def prescription():
    id = request.args.get("id")
    _from = request.args.get("from")
    till = request.args.get("till")
    institution = request.args.get("institution")
    doctor = request.args.get("doctor")
    medication = request.args.get("medication")
    doc_notes = request.args.get("doc_notes")
    renewable = request.args.get("renewable")
    times = request.args.get("times")
    patient = request.args.get("patient")


    filter = ""

    if id != None and id != "":
        filter += f"PrescriptionID = \"{id}\""
    if _from != None and _from != "":
        filter += f"Issued = \"{_from}\""
    if till != None and till != "":
        filter += f"Until = \"{till}\""
    if institution != None and institution != "":
        filter += f"PrescriptionInstitutionID = \"{institution}\""
    if doctor != None and doctor != "":
        filter += f"PrescriptionDoctorID = \"{doctor}\""
    if medication != None and medication != "":
        filter += f"MedicineID = \"{id}\""
    if doc_notes != None and doc_notes != "":
        filter += f"DoctorsNotes = \"{id}\""
    if renewable != None and renewable != "":
        filter += f"Renewable = \"{renewable}\""
    if times != None and times != "":
        filter += f"RenewableTimes = \"{times}\""
    if patient != None and patient != "":
        filter += f"PatientID = \"{patient}\""

    if filter != "":
        data = database.get_table("Prescription", filter)
    else:
        data = database.get_table("Prescription", None)

    return render_template("prescription.html", data=data)

def record():
    id = request.args.get("id")
    patient = request.args.get("patient")
    last_doc = request.args.get("last_doc")
    new_doc = request.args.get("new_doc")
    timestamp = request.args.get("timestamp")

    filter = ""

    if id != None and id != "":
        filter += f"RecordID = \"{id}\""
    if patient != None and patient != "":
        filter += f"PatientID = \"{patient}\""
    if last_doc != None and last_doc != "":
        filter += f"PreviousDoctor = \"{last_doc}\""
    if new_doc != None and new_doc != "":
        filter += f"CurrentDoctor = \"{new_doc}\""
    if timestamp != None and timestamp != "":
        filter += f"RecordTime = \"{timestamp}\""

    if filter != "":
        data = database.get_table("Record", filter)
    else:
        data = database.get_table("Record", None)

    return render_template("record.html", data=data)

def visit():
    id = request.args.get("id")
    patient = request.args.get("patient")
    doctor_id = request.args.get("doctor_id")
    type = request.args.get("type")
    diagnosis = request.args.get("diagnosis")
    follow_up = request.args.get("follow_up")
    vitals = request.args.get("vitals")
    timestamp = request.args.get("timestamp")

    filter = ""

    if id != None and id != "":
        filter += f"VisitID = \"{id}\""
    if patient != None and patient != "":
        filter += f"PatientAMKA = \"{patient}\""
    if doctor_id != None and doctor_id != "":
        filter += f"DoctorID = \"{doctor_id}\""
    if type != None and type != "":
        filter += f"VisitType = \"{type}\""
    if diagnosis != None and diagnosis != "":
        filter += f"Diagnosis = \"{diagnosis}\""
    if follow_up != None and follow_up != "":
        filter += f"FollowUp = \"{follow_up}\""
    if vitals != None and vitals != "":
        filter += f"Vitals = \"{vitals}\""
    if timestamp != None and timestamp != "":
        filter += f"Timestamp = \"{timestamp}\""

    if filter != "":
        data = database.get_table("Visit", filter)
    else:
        data = database.get_table("Visit", None)

    return render_template("visits.html", data=data)