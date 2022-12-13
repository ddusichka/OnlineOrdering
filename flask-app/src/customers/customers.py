from flask import Blueprint, request, jsonify, current_app
from src import db

customers = Blueprint('customers', __name__)

@customers.route("/fav_restaurants")
def restaurants():
   cur = db.get_db().cursor()
   cur.execute('select restaurantName, streetAddress, cuisine, restaurantID from Restaurant')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@customers.route("/account")
def getAccount():
   cur = db.get_db().cursor()
   cur.execute('select custName, userName from Customer c JOIN AccountDetails a on (c.customerID = a.custID) where c.customerID = 3')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@customers.route("/menu_items")
def menu_items():
   cur = db.get_db().cursor()
   current_app.logger.info(request.form)
   catName = request.form['catName']
   restID = request.form['restID']
   cur.execute(f'select itemName, price, itemDescription from MenuItems m Join Category c on (m.categoryID = c.categoryID) Join Restaurant r on (m.restaurantID = r.restaurantID) where catName = "{catName}" and r.restaurantID = {restID}')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@customers.route("/categories/<restID>")
def categories(restID):
   cur = db.get_db().cursor()
   cur.execute(f'select distinct catName from MenuItems m join Category c on (m.categoryID = c.categoryID) Join Restaurant r on (m.restaurantID = r.restaurantID) where m.restaurantID = {restID}')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)
