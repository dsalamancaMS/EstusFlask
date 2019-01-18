from flask import Flask
from flask import render_template
import os

app = Flask(__name__)

@app.route("/")
def estus_flask():

    message = "Hello " + os.getenv("HOSTNAME")
    return render_template("index.html", message=message, language="Python")
    

@app.route("/work")
def memory_load():
    bytearray(512000000)     
    return render_template("gophers_working.html")