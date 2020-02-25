import sqlite3 as sql

database1 = sql.connect('test2.db')

db1_cursor = database1.cursor()

cmd = 'CREATE TABLE users(username TEXT,password TEXT)'
cmd2 = 'INSERT INTO users(username,password) VALUES("testuser","testpassword")'
cmd3 = 'SELECT username,password FROM users'
#db1_cursor.execute(cmd)
#db1_cursor.execute(cmd2)
db1_cursor.execute(cmd3)
database1.commit()

for x in db1_cursor:
    print x
