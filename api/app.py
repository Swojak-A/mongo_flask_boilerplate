#!/usr/bin/env python
from flask import Flask
from modules.index.views import index_blueprint

app = Flask(__name__)
app.register_blueprint(index_blueprint)

def create_app():
    app = Flask(__name__)
    app.register_blueprint(index_blueprint)

    return app

if __name__ == "__main__":
    app.run(host='0.0.0.0', port=5000, debug=True)