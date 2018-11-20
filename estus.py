from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def estus_flask():
    message = "Hello Development"
    return render_template("index.html", message=message, language="Python")

