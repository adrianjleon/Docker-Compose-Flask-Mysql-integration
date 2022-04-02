from flask_wtf import FlaskForm
from wtforms import StringField, IntegerField, SubmitField


class AgregarNodoForm(FlaskForm):
    
    nombre_nodo = StringField("Nombre del Nodo")
    ip_nodo = StringField("IP del Nodo")
    peid_nodo = StringField("PEID del Nodo")
    submit = SubmitField()


class EliminarNodoForm(FlaskForm):
    
    
    id_nodo = StringField("ID del Nodo")
    