from flask import Flask


app = Flask(__name__)

@app.route('/')
def    index_routehandler():
  return {}


if __name__ == '__main__':
  #   run                      5000 default flask
  app.run(host='0.0.0.0', port=5000)
