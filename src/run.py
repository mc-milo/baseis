from flask import Flask
import os
from dotenv import load_dotenv


from views.frontend import index, doctors, hospital, insurance, medication, patient, prescription, record, visit


# load the .env values
load_dotenv()

# initialize the flask application values
app = Flask(__name__)
app.config["SECRET_KEY"] = os.getenv("secret_key")

app.add_url_rule("/", view_func=index)
app.add_url_rule("/doctors", view_func=doctors)
app.add_url_rule("/hospital", view_func=hospital)
app.add_url_rule("/insurance", view_func=insurance)
app.add_url_rule("/medication", view_func=medication)
app.add_url_rule("/patient", view_func=patient)
app.add_url_rule("/prescription", view_func=prescription)
app.add_url_rule("/record", view_func=record)
app.add_url_rule("/visits", view_func=visit)

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=9090)