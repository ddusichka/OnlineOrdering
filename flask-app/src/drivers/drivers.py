from flask import Blueprint, request, jsonify, current_app
from flaskext.mysql import MySQL
import json
from src import db


drivers = Blueprint('drivers', __name__)

@drivers.route('/test', methods=['GET'])
def testThis():
    return f'<h1>"Hello!"</h1>'

@drivers.route("/pickups")
def pickups():
   cur = db.get_db().cursor()
   cur.execute('select custName, restaurantName, o.orderID, o.streetAddress, delivered from (Customer c JOIN CustomerOrders o on (c.customerID = o.custID) JOIN Driver d on (o.driverID = d.empID) JOIN OrderDetail od on (od.orderID = o.orderID) JOIN MenuItems mi on (od.itemID = mi.itemID) JOIN Restaurant r on (r.restaurantID = mi.restaurantID)) where empID < 4 GROUP BY orderID, restaurantName')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@drivers.route("/pickupOrder", methods=['POST'])
def pickupOrder():
    current_app.logger.info(request.form)
    cur = db.get_db().cursor()
    status = request.form['status']
    orderID = request.form['orderID']
    cur.execute(f'UPDATE CustomerOrders SET delivered = true WHERE orderID = 1')
    db.get_db().commit()
    return "Success!"

@drivers.route("/fillOrders")
def fillOrders():
   cur = db.get_db().cursor()
   cur.execute('select c.orderID, c.custID, driverID, c.streetAddress, c.delivered, cust.custName, itemID, phoneNum from CustomerOrders c Join Customer cust on (c.custID = cust.customerID) Join OrderDetail o on (c.orderID = o.orderID) join AccountDetails a on (cust.customerID = a.custID)')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)