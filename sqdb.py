import sqlite3

con = sqlite3.connect("mycompany.db")
cobj = con.cursor()

cobj.execute(
    "CREATE TABLE IF NOT EXISTS employees(id INTEGER PRIMARY KEY, name TEXT, salary REAL, department TEXT, position TEXT)")
con.commit()


def insert_value(id, name, salary, department, position):
    cobj.execute(
        "INSERT INTO employees VALUES(?, ?, ?, ?, ?)", (id, name, salary, department, position))
    con.commit()


def update_department(department, id):
    cobj.execute("UPDATE employees SET department=? WHERE id=?",
                 (department, id))
    con.commit()


def sql_fetch():
    cobj.execute("SELECT * FROM employees")
    # cobj.execute("SELECT name FROM employees WHERE salary > ?", (5000.0,))
    # cobj.execute(
    #     "SELECT name, salary FROM employees WHERE department= ?", ('python',))
    result = cobj.fetchall()
    print(result)


def delete_all():
    cobj.execute("DELETE FROM employees")
    # cobj.execute("DELETE FROM employees WHERE name=?", ("ssm", ))
    con.commit()


insert_value(2, "and", 2999, "dafd", "dafds")

cobj.close()
con.close()
