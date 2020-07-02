from flask import Flask
from flask_cors import CORS
from flask_restful import Api

from api.resources import Tune


def create_app():
    app = Flask(__name__)

    CORS(app, resources={r"*": {"origins": "*"}})

    api = Api(app)
    api.add_resource(Tune, "/tune")

    return app
