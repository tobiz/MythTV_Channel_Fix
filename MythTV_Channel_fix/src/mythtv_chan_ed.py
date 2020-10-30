#
# Program to clean up MythTV UK DVT2 Channel numbers 
# See http://wiki.stocksy.co.uk/wiki/Tidy_up_MythTV_Channels
#

import mysql.connector
from mysql.connector import Error
from tabulate import tabulate
import os

mythtv_emley_moor = '../data/mythtv_emley_moor.sql'
mythtv_blesdale  = '../data/mythtv_blesdale.sql'
mythtv_emley_blesdale = '../data/mythtv_emley_blesdale.sql'
mythtv_all_channel  = '../data/mythtv_channel_view.sql'



mythtv_channels = mythtv_all_channel
#mythtv_channels = mythtv_emley_blesdale
#mythtv_channels = mythtv_emley_moor


fileDir = os.path.dirname(os.path.realpath('__file__'))
print "File director: ", fileDir
mysql_script = os.path.join(fileDir, '../data/mysql_script.sql')
#mythtv_channel_view = os.path.join(fileDir, '../data/mythtv_channel_view.sql')
mythtv_channel_view = os.path.join(fileDir, mythtv_channels)

try:
    print "MySQL script file is: ", mysql_script
    print "MythTV Channel View script file is: ", mythtv_channel_view
    
    mythtv_db = mysql.connector.connect(host='localhost',
                                         database='mythconverg',
                                         user='root',
                                         password='mysqlvm3')
    if mythtv_db.is_connected():
        db_Info = mythtv_db.get_server_info()
        print "Connected to MySQL Server version: ", db_Info
        cursor = mythtv_db.cursor()
        cursor.execute("select database();")
        record = cursor.fetchone()
        print "You're connected to database: ", record
    try:
        with open(mysql_script, 'r') as f:
            print "Opened Script"
            # See https://stackoverflow.com/questions/59848116/how-to-execute-a-sql-file-using-mysql-connector-and-save-it-in-a-database-in-py
            cursor.execute(f.read(), multi=True)
            print "Script run"
        #mythtv_db.commit()
        #print "DB commit"
    except:
        print "Error running script"
        #cursor.execute(f.read(), multi=True)
        
    try:
        with open(mythtv_channels, 'r') as f:
            print "Opened Channel View script"
            cursor.execute(f.read(), multi=False)
            #cursor.execute(f.read(), multi=True)
            print "Execute view script"
            records = cursor.fetchall()
            print "Fetchall ok"
            print "Total number of rows Channel table is: ", cursor.rowcount
            print tabulate(records, headers=["chanid", "channum", "freqid", "sourceid", "callsign", "name", "xmltvid", "serviceid"])
            #print tabulate(records)
    except:
        print "View script failed"
        

except Error as e:
    print("Error while connecting to MySQL", e)
finally:
    if (mythtv_db.is_connected()):
        cursor.close()
        print "Cursor closed"
        mythtv_db.close()
        print("MySQL mythtv_db is closed")
        
exit()




