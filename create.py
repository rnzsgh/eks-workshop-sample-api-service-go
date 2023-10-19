from flask import Flask
import boto3


app = Flask(__name__)

@app.route('/')
    return "Running the Flask App to create container"



if __name__ == '__main__':
    app.run(host="0.0.0.0", port=8000)
