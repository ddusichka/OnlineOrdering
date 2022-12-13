from flask import Blueprint, request, jsonify, make_response
import json
from src import db

customers = Blueprint('customers', __name__)

# # Get all customers from the DB
# @customers.route('/customers', methods=['GET'])
# def get_customers():
#     cursor = db.get_db().cursor()
#     cursor.execute('select customerNumber, customerName,\
#         creditLimit from customers')
#     row_headers = [x[0] for x in cursor.description]
#     json_data = []
#     theData = cursor.fetchall()
#     for row in theData:
#         json_data.append(dict(zip(row_headers, row)))
#     the_response = make_response(jsonify(json_data))
#     the_response.status_code = 200
#     the_response.mimetype = 'application/json'
#     return the_response

# # Get customer detail for customer with particular userID
# @customers.route('/customers/<userID>', methods=['GET'])
# def get_customer(userID):
#     cursor = db.get_db().cursor()
#     cursor.execute('select * from customers where customerNumber = {0}'.format(userID))
#     row_headers = [x[0] for x in cursor.description]
#     json_data = []
#     theData = cursor.fetchall()
#     for row in theData:
#         json_data.append(dict(zip(row_headers, row)))
#     the_response = make_response(jsonify(json_data))
#     the_response.status_code = 200
#     the_response.mimetype = 'application/json'
#     return the_response

@customers.route("/fav_restaurants")
def restaurants():
   cur = db.get_db().cursor()
   cur.execute('select restaurantName, streetAddress, cuisine from Restaurant')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@customers.route("/menu_items")
def menu_items():
   cur = db.get_db().cursor()
   cur.execute('select restaurantName, catName, itemName, itemID, price, m.categoryID, m.restaurantID, addedByManagerID, itemDescription from MenuItems m Join Category c on (m.categoryID = c.categoryID) Join Restaurant r on (m.restaurantID = r.restaurantID)')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)