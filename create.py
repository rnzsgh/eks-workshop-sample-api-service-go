from flask import Flask
from flask import Flask, render_template
import boto3


app = Flask(__name__)

@app.route('/')
def index(): 
    return render_template('index.html')



if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8080)
