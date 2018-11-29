from flask import Flask
from flask import render_template
import os

app = Flask(__name__)

@app.route("/")
def estus_flask():
    message = "Hello from " + os.getenv("HOSTNAME")
    return render_template("index.html", message=message, language="Python")

