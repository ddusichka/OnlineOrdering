###
# Main application interface
###

# import the create app function 
# that lives in src/__init__.py
from src import create_app
from flask import Flask, jsonify, request
from flaskext.mysql import MySQL

# # create the app object
app = create_app()

# create a flask object
# app = Flask(__name__)

# add db config variables to the app object
app.config['MYSQL_DATABASE_HOST'] = 'db'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_USER'] = 'webapp'
app.config['MYSQL_DATABASE_PASSWORD'] = open('/secrets/db_password.txt').readline()
app.config['MYSQL_DATABASE_DB'] = 'orders'

# create the MySQL object and connect it to the 
# Flask app object
db_connection = MySQL()
db_connection.init_app(app)

@app.route("/")
def hello_world():
    return f'<h1>Hello from the Red Dragon Ordering Service!</h1>'

if __name__ == '__main__':
    # we want to run in debug mode (for hot reloading) 
    # this app will be bound to port 4000. 
    # Take a look at the docker-compose.yml to see 
    # what port this might be mapped to... 
    app.run(debug = True, host = '0.0.0.0', port = 4000)