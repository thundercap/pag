from flask import Flask


app = Flask(__name__)

@app.route('/')
def hello_docker():
    return '<h1> Im Paulson Chacko</h1><br><p>The app has been deployed</p> '

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0')
