from flask import Blueprint, request, jsonify, make_response
import json
from src import db


managers = Blueprint('managers', __name__)

@managers.route('/test', methods=['GET'])
def testThis():
    return f'<h1>"Hello!"</h1>'

@managers.route("/reviews")
def reviews():
   cur = db.get_db().cursor()
   cur.execute('select orderID, reviewID, rating, comment, mgrResponse, DATE_FORMAT(orderDate, "%m-%d-%Y") as date from Review')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)

@managers.route("/manager_view")
def manager():
   cur = db.get_db().cursor()
   cur.execute('select r.restaurantName, r.cuisine, r.streetAddress, r.restaurantID, m.itemName, m.itemDescription, m.price, m.itemID from Restaurant r JOIN MenuItems m on (m.RestaurantID = r.restaurantID)')
   row_headers = [x[0] for x in cur.description]
   json_data = []
   theData = cur.fetchall()
   for row in theData:
       json_data.append(dict(zip(row_headers, row)))
   return jsonify(json_data)
