#!/usr/bin/python2.7
from app import app

@app.route('/')
@app.route('/index')
def index():
    return "Hello, World!"