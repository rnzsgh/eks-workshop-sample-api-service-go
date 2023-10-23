from flask import Flask
from flask import render_template


app = Flask(__name__)

color_codes = {
    'blue':   '#7ac8ee',
    'green':  '#9eff9a',
    'pink':   '#f6019d',
    'purple': '#541388',
    'red':    '#ff9a9e',
    'yellow': '#ffca05'
}

@app.route('/')
def hello():
  return render_template('index.html', hostname=HOSTNAME,color=color_codes[COLOR])


if __name__ == '__main__':
    app.run(threaded=True, host="0.0.0.0", port=8080)
