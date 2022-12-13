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
app.config['MYSQL_DATABASE_PASSWORD'] = 'abc123'
app.config['MYSQL_DATABASE_DB'] = 'orders'

# create the MySQL object and connect it to the 
# Flask app object
db_connection = MySQL()
db_connection.init_app(app)

@app.route("/")
def hello_world():
    return f'<h1>Hello from the Red Dragon Ordering Service!</h1>'

@app.route("/order/<id>")
def items_in_order(id):
    cur = db_connection.get_db().cursor()
    cur.execute(f'select itemName from (CustomerOrders o JOIN Driver d on (o.driverID = d.empID) JOIN OrderDetail od on (od.orderID = o.orderID) JOIN MenuItems mi on (od.itemID = mi.itemID) JOIN Restaurant r on (r.restaurantID = mi.restaurantID)) where empID = 1 and od.orderID = {id}')
    row_headers = [x[0] for x in cur.description]
    json_data = []
    theData = cur.fetchall()
    for row in theData:
        json_data.append(dict(zip(row_headers, row)))
    return jsonify(json_data)

@app.route("/reply", methods=['POST'])
def orderDelivered():
    app.logger.info(request.form)
    cur = db_connection.get_db().cursor()
    message = request.form['message']
    reviewID = request.form['reviewID']
    cur.execute(f'UPDATE Review SET mgrResponse = "{message}" WHERE reviewID = {reviewID}')
    db_connection.get_db().commit()
    return "Success!"
    

if __name__ == '__main__':
    # we want to run in debug mode (for hot reloading) 
    # this app will be bound to port 4000. 
    # Take a look at the docker-compose.yml to see 
    # what port this might be mapped to... 
    app.run(debug = True, host = '0.0.0.0', port = 4000)