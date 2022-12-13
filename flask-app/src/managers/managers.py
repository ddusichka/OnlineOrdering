from flask import Blueprint, request, jsonify, current_app
import json
from src import db


managers = Blueprint('managers', __name__)

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

@managers.route("/reply", methods=['POST'])
def orderDelivered():
    current_app.logger.info(request.form)
    cur = db.get_db().cursor()
    message = request.form['message']
    reviewID = request.form['reviewID']
    cur.execute(f'UPDATE Review SET mgrResponse = "{message}" WHERE reviewID = {reviewID}')
    db.get_db().commit()
    return "Success!"

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
