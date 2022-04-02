# __init__.py hijo directo del directorio del proyecto

from flask import  Flask
import mysql.connector
from flask_mysqldb import MySQL


app = Flask(__name__)
mysql = MySQL(app)

app.config['SECRET_KEY'] = "secretkey1"
app.config['MYSQL_HOST'] = 'mysql_app_oficial'
app.config['MYSQL_USER'] = 'root'
app.config['MYSQL_PASSWORD'] = 'root'
app.config['MYSQL_DB'] = 'red_telecom'

from redes_servicios import routes

from redes_servicios.nodos.views import nodos_blueprints

app.register_blueprint(nodos_blueprints, url_prefix='/nodos')







