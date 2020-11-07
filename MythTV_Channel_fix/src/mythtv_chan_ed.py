#
# Program to clean up MythTV UK DVT2 Channel numbers 
# See http://wiki.stocksy.co.uk/wiki/Tidy_up_MythTV_Channels
#
import MySQLdb
import mysql.connector
from mysql.connector import Error
from tabulate import tabulate
import os

mythtv_emley_moor = '../data/mythtv_emley_moor.sql'
#mythtv_blesdale  = '../data/mythtv_blesdale.sql'
#mythtv_emley_blesdale = '../data/mythtv_emley_blesdale.sql'
#mythtv_all_channel  = '../data/mythtv_channel_view.sql'

mythtv_channels = mythtv_emley_moor


fileDir = os.path.dirname(os.path.realpath('__file__'))
print "File director: ", fileDir
mysql_script = os.path.join(fileDir, '../data/mysql_script.sql')
mythtv_channel_view = os.path.join(fileDir, mythtv_channels)

def exec_mysql_script(mythtv_db, cursor, mysql_script, commit):
    try:
        with open(mysql_script, 'r') as f:
            i = 0
            for line in f:
                i = i+1
                #line = (' '.join(line.split()))
                if line[0] == "-":
                    #print "Line: ", i, "Comment line: ", line.rstrip()
                    #print "Line: ", i, "Comment line: ", (' '.join(line.split())).rstrip()
                    continue
                elif line[0] == "\n":
                    #print "Line: ", i, "Blank line"
                    continue
                nline = line.split("#")
                res = cursor.execute(nline[0], multi=False)
                nline[0] = (' '.join(nline[0].split()))
                #print "Line: ", i, "Command line: ", nline[0].rstrip(), " Result: ", res
            
            if commit:
                #res = mythtv_db.commit()
                print "DB commit: ", res
            else:
                print "DB don't commit: ", res
    except ( MySQLdb.Warning) as e:
        print "Error running script: ", e
         
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
    
    exec_mysql_script(mythtv_db, cursor, mysql_script, commit=False)
    
    exec_mysql_script(mythtv_db, cursor, mythtv_channel_view, commit=False)
    
    rows = cursor.fetchall()
    print "Fetchall ok"
    print "Total number of rows Channel table is: ", cursor.rowcount
    print tabulate(rows, headers=["chanid", "channum", "freqid", "callsign", "name", "xmltvid", "serviceid"],tablefmt="github")
    
except Error as e:
    print("Error while connecting to MySQL", e)
finally:
    if (mythtv_db.is_connected()):
        cursor.close()
        print "Cursor closed"
        mythtv_db.close()
        print("MySQL mythtv_db is closed")
        
    exit()
    
