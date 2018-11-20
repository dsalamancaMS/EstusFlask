from flask import Flask
from flask import render_template

app = Flask(__name__)

@app.route("/")
def estus_flask():
    message = "Hello Azure"
    return render_template("index.html", message=message, language="Python")

if __name__ == "__main__":
    app.run(debug=False)