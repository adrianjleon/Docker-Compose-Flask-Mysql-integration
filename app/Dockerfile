# temp stage para instalar linux con python incorporado
FROM python:3.8-slim
# creo un directorio en el SO para alojar el proyecto
RUN mkdir /app
# Elijo el nuevo directorio como directorio de trabajo
WORKDIR /app


# Instalo y actualizo todos los paquetes del SO 
RUN apt-get update -qq \
    && apt-get install --no-install-recommends --yes \
        build-essential \
        default-libmysqlclient-dev \
        # No remover las siguientes instalaciones si se usa la APP con mysql
        libmariadb3 \
    && rm -rf /var/lib/apt/lists/* \
    && python3 -m pip install --no-cache-dir mysqlclient \
    && apt-get autoremove --purge --yes \
        build-essential \
        default-libmysqlclient-dev

# Instalo paquetes que se usaran en la APP
RUN python3 -m pip install --no-cache-dir \
      numpy scipy pandas matplotlib

# para evitar warnings respecto al update de pip instalo la mas reciente
RUN python -m pip install --upgrade pip

# Copio desde la maquina host el archivo que contiene la lista de paquetes necesarios 
#para el funcionamiento de la app al nuevo contenedor
COPY requirements.txt /app
COPY main.py /app
RUN pip install -r requirements.txt
RUN pip install matplotlib

# Pongo en uso el puerto 5000 para el servicio web en el contenedor
EXPOSE 5000

# Copio todos los directorios desde la maquina host al nuevo contenedor
COPY . ./app

# Finalmente al levantar el contener inicio al app con el archivo .py 
CMD python main.py