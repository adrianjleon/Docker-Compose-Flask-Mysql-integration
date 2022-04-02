# 
from flask import Blueprint, render_template, redirect, url_for
from redes_servicios import mysql
from redes_servicios.nodos.forms import AgregarNodoForm,EliminarNodoForm
import MySQLdb.cursors

nodos_blueprints = Blueprint('nodos', __name__, template_folder='templates/nodos')

@nodos_blueprints.route("/agregar", methods=['POST','GET'])
def agregar():

    form = AgregarNodoForm()

    if form.validate_on_submit():
        nombre_nodo = form.nombre_nodo.data
        ip_nodo = form.ip_nodo.data
        peid_nodo = form.peid_nodo.data

        cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
        cursor.execute('SELECT * FROM nodo WHERE nombre_nodo =%s', (nombre_nodo, ))        
        nodo = cursor.fetchone()

        if nodo:
            msg = 'Nodo ya existente'

        else:
            
            cursor.execute('INSERT INTO nodo VALUES (null, %s, %s, %s)', (nombre_nodo, ip_nodo, peid_nodo, ))
            
            mysql.connection.commit()

            msg = 'Nodo Agregado correctamente'

            return redirect(url_for("nodos.listar"))

    return render_template('agregar_nodo.html', form = form)


@nodos_blueprints.route("/listar", methods=['POST','GET'])
def listar():
    cursor = mysql.connection.cursor(MySQLdb.cursors.DictCursor)
    cursor.execute('SELECT * FROM nodo')        
    nodos = cursor.fetchall()

    return render_template('listar.html', nodos=nodos)



            
        