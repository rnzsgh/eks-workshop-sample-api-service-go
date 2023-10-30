from flask import Flask
import boto3


app = Flask(__name__)

@app.route('/')
def index(): 
    return "Running the Flask App to create container pull from GitHub!"



if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8080)
