from flask import Blueprint, request, jsonify, make_response
import json
from src import db


drivers = Blueprint('drivers', __name__)

@drivers.route('/test', methods=['GET'])
def testThis():
    return f'<h1>"Hello!"</h1>'

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

@drivers.route("/pickups")
def pickups():
   cur = db.get_db().cursor()
   cur.execute('select restaurantName, o.orderID, o.streetAddress, delivered from (CustomerOrders o JOIN Driver d on (o.driverID = d.empID) JOIN OrderDetail od on (od.orderID = o.orderID) JOIN MenuItems mi on (od.itemID = mi.itemID) JOIN Restaurant r on (r.restaurantID = mi.restaurantID)) where empID = 1 GROUP BY orderID, restaurantName')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)