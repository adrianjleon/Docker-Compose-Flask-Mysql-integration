import io
import base64
from matplotlib.backends.backend_agg import FigureCanvasAgg as FigureCanvas
import matplotlib.pyplot as plt
import seaborn as sns
import pandas as pd


def determinar_migracion(interfaz):
    if interfaz in ['ACCESO', 
                    'ACCESO',
                    'ACCESO',
                    'ACCESO',
                    'ACCESO']:
        return "No Migrada"
    else:
        return "Migrada"



def migracion_nodos():
    pass

