import mysql.connector;

def delete(id):
    conn = mysql.connector.connect(host='localhost',database='mydb',user='root',password='test1234')

    if conn.is_connected():
    print("Connected to mysql db")
    cursor = conn.cursor()

    try:
        cursor.execute("delete from emp where id='%d'")
        conn.commit()
        print("Employee Added")
    except:
        conn.rollback()

    cursor.close()
    conn.close()
