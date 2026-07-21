from flask import Flask, render_template, request
from pymongo import MongoClient

app = Flask(__name__)

# MongoDB Connection
client = MongoClient("mongodb://10.0.2.2:27017/")
db = client["registrationdb"]
users = db["users"]

@app.route('/')
def home():
    return render_template('index.html')

@app.route('/register', methods=['POST'])
def register():

    name = request.form['name']
    email = request.form['email']
    phone = request.form['phone']
    city = request.form['city']

    users.insert_one({
        "name": name,
        "email": email,
        "phone": phone,
        "city": city
    })

    return f"""
    <h2>Registration Successful</h2>

    <h3>Name : {name}</h3>

    <h3>Email : {email}</h3>

    <h3>Phone : {phone}</h3>

    <h3>City : {city}</h3>

    <h3>Data Saved Successfully in MongoDB</h3>
    """

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000, debug=True)
