###
# Main application interface
###

# import the create app function 
# that lives in src/__init__.py
from src import create_app
from flask import Flask, jsonify, request
from flaskext.mysql import MySQL

# # create the app object
# app = create_app()

# create a flask object
app = Flask(__name__)

# add db config variables to the app object
app.config['MYSQL_DATABASE_HOST'] = 'db'
app.config['MYSQL_DATABASE_PORT'] = 3306
app.config['MYSQL_DATABASE_USER'] = 'webapp'
app.config['MYSQL_DATABASE_PASSWORD'] = 'abc123'
app.config['MYSQL_DATABASE_DB'] = 'cool_db'

# create the MySQL object and connect it to the 
# Flask app object
db_connection = MySQL()
db_connection.init_app(app)


@app.route("/form")
def get_form():
    return """
    <h2>HTML Forms</h2>
    <form action="/form" method="POST">
    <label for="Poopy">First name:</label><br>
    <input type="text" id="first" name="first" value="John"><br>
    <label for="last">Last name:</label><br>
    <input type="text" id="last" name="last" value="Doe"><br><br>
    <input type="submit" value="Submit">
    </form> 
    """
    
@app.route('/form', methods = ['POST'])
def add_detail():
   first_name = request.form['Poopy']
   last_name = request.form['last']
   return f'<h1>Hello {first_name} {last_name}.</h1>'

@app.route("/")
def hello_world():
    return f'<h1>Hello From the Red Dragon Ordering Service!</h1>'

@app.route("/fav_restaurants")
def restaurants():
   cur = db_connection.get_db().cursor()
   cur.execute('select restaurantName, streetAddress, cuisine from Restaurant')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)


@app.route("/fillOrders")
def fillOrders():
   cur = db_connection.get_db().cursor()
   cur.execute('select c.orderID, c.custID, driverID, c.streetAddress, c.delivered, cust.custName, itemID, phoneNum from CustomerOrders c Join Customer cust on (c.custID = cust.customerID) Join OrderDetail o on (c.orderID = o.orderID) join AccountDetails a on (cust.customerID = a.custID)')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@app.route("/menu_items")
def menu_items():
   cur = db_connection.get_db().cursor()
   cur.execute('select restaurantName, catName, itemName, itemID, price, m.categoryID, m.restaurantID, addedByManagerID, itemDescription from MenuItems m Join Category c on (m.categoryID = c.categoryID) Join Restaurant r on (m.restaurantID = r.restaurantID)')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@app.route("/reviews")
def reviews():
   cur = db_connection.get_db().cursor()
   cur.execute('select rating, comment from Review')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@app.route("/manager_view")
def manager():
   cur = db_connection.get_db().cursor()
   cur.execute('select r.restaurantName, r.cuisine, r.streetAddress, r.restaurantID, m.itemName, m.itemDescription, m.price, m.itemID from Restaurant r JOIN MenuItems m on (m.RestaurantID = r.restaurantID)')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@app.route("/pickups")
def pickups():
   cur = db_connection.get_db().cursor()
   cur.execute('select restaurantName, o.orderID, o.streetAddress, delivered from (CustomerOrders o JOIN Driver d on (o.driverID = d.empID) JOIN OrderDetail od on (od.orderID = o.orderID) JOIN MenuItems mi on (od.itemID = mi.itemID) JOIN Restaurant r on (r.restaurantID = mi.restaurantID)) where empID = 1 GROUP BY orderID, restaurantName')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

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

@app.route("/fakeform", methods=['POST'])
def add_data():
    app.logger.info(request.form)
    return "Hello"

# @app.route("/delivered", methods=['POST'])
# def orderDelivered():
#     # app.logger.info(request.form)
#     cur = db_connection.get_db().cursor()
#     cur.execute("update CustomerOrders set delivered = !delivered where ")
    

if __name__ == '__main__':
    # we want to run in debug mode (for hot reloading) 
    # this app will be bound to port 4000. 
    # Take a look at the docker-compose.yml to see 
    # what port this might be mapped to... 
    app.run(debug = True, host = '0.0.0.0', port = 4000)