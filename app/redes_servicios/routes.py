# Lista de rutas del URL

from flask import render_template,send_file 
from redes_servicios import app
from .plot_functions.Plot_functions import determinar_migracion
import matplotlib.pyplot as plt
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
from matplotlib.figure import Figure

import matplotlib.patches as mpatches
import io

import pandas as pd

# http://192.168.0.61:8000/
# http://192.168.0.61:8000/inicio
@app.route('/inicio')
@app.route('/')
def home():
    return render_template('index.html')


@app.route('/nodos')
def nodos():
    return render_template('nodos.html') 


@app.route('/migracion_personal')
def migracion_personal():
    fig, ax = plt.subplots(figsize=(6,6))

    df = pd.read_csv('redes_servicios/despliegues/migracion_personal/FUSION_FINAL_29_12_2022.csv', 
                    names=['NODO','VENDOR','VRF','INTERFACE','ESTADO'],
                    sep=';')

    df['migracion'] = df['VRF'].apply(determinar_migracion)

    color = ['green', 'red']
    df.groupby(['NODO'])['migracion'].value_counts().unstack().plot.barh(figsize=(15,25),color =color )
    plt.grid(True)
    plt.xlabel('CANTIDAD')
    plt.ylabel('NODO(S)')
    
    green_patch = mpatches.Patch(color='green', label='MIGRADAS')
    red_patch = mpatches.Patch(color='red', label='NO MIGRADAS')
    plt.legend(handles=[green_patch, red_patch])

    canvas = FigureCanvas(fig)
    img = io.BytesIO()
    
    plt.savefig(img, format="png") 
    plt.show()
    img.seek(0)
    return send_file(img, mimetype='image/png')  