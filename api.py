import requests
import json
from tkinter import *
from tkinter import messagebox, Menu
import sqlite3

# # FREE API
# api_request = requests.get("https://api.coinmarketcap.com/v1/ticker/")
# api = json.loads(api_request.content)
# print(api[0]["symbol"])
# print(api[0]["price_usd"])

gui = Tk()

gui.title("Crypto Portfolio")
gui.iconbitmap('if_gvim_17927.ico')

con = sqlite3.connect("coin.db")
curobj = con.cursor()

curobj.execute(
    "CREATE TABLE IF NOT EXISTS coin(id INTEGER PRIMARY KEY, symbol TEXT, amount INTEGER, price REAL)")
con.commit()

# curobj.execute("INSERT INTO coin VALUES(1, 'BTC', 2, 3250)")
# con.commit()
# curobj.execute("INSERT INTO coin VALUES(2, 'ETH', 100, 500)")
# con.commit()
# curobj.execute("INSERT INTO coin VALUES(3, 'XRP', 100, 10)")
# con.commit()
# curobj.execute("INSERT INTO coin VALUES(4, 'USDT', 30, 8)")
# con.commit()

def my_portfolio():
    api_request = requests.get(
        "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?start=1&limit=1000&convert=USD&CMC_PRO_API_KEY=40f824a0-227b-4714-8059-d7f5000ec7d7")

    api = json.loads(api_request.content)

    curobj.execute("SELECT * FROM coin")
    coins = curobj.fetchall()

    def font_color(amount):
        if amount >= 0:
            return "green"
        else:
            return "red"


    def insert_coin():
        curobj.execute("INSERT INTO coin(symbol, price, amount) VALUES(?, ?, ?)",
                      (symbol_txt.get(), price_txt.get(), amount_txt.get()))
        con.commit()

        messagebox.showinfo("Portfolio Notification",
                            "Coin added successfully")
        reset()


    def update_coin():
        curobj.execute("UPDATE coin SET symbol=?, price=?, amount=? WHERE id=?",
                      (symbol_update.get(), price_update.get(), amount_update.get(), pid_update.get()))
        con.commit()
        messagebox.showinfo("Portfolio Notification",
                            "Coin updated successfully")
        reset()


    def delete_coin():
        curobj.execute("DELETE FROM coin WHERE id=?",
                      (pid_delete.get(), ))
        con.commit()
        messagebox.showinfo("Portfolio Notification",
                            "Coin deleted successfully")
        reset()


    def reset():
        for frame in gui.winfo_children():
            frame.destroy()
        app_nav()
        app_header()
        my_portfolio()


    def close_app():
        gui.destroy()

    gross_pl = 0
    coin_row = 1
    total_current = 0
    for i in range(0, 1000):
        for coin in coins:
            if coin[1] == api["data"][i]["symbol"]:
                total_paid = coin[2]*coin[3]
                current_value = coin[2] * \
                    api["data"][i]["quote"]["USD"]["price"]
                pl_percoin = api["data"][i]["quote"]["USD"]["price"] - coin[3]
                total_pl = current_value - total_paid
                gross_pl += total_pl
                total_current += current_value

                values = [coin[0],
                          api["data"][i]["name"],
                          "{0:.2f}".format(coin[3]),
                          coin[2],
                          "${0:.2f}".format(total_paid),
                          "${0:.2f}".format(current_value),
                          "${0:.2f}".format(pl_percoin),
                          "${0:.2f}".format(total_pl)]

                cur_column = 0
                for value in values:
                    name = Label(gui, text=value,
                                 bg=colors[cur_column % 2], fg="black", font="Roboto 12",
                                 padx="5", pady="5", borderwidth=2, relief="groove")
                    name.grid(row=coin_row, column=cur_column,
                              sticky=N+S+E+W)
                    cur_column += 1

                coin_row += 1

    # add coin
    symbol_txt = Entry(gui, borderwidth=2, relief="groove")
    symbol_txt.grid(row=coin_row+1, column=1)
    price_txt = Entry(gui, borderwidth=2, relief="groove")
    price_txt.grid(row=coin_row+1, column=2)
    amount_txt = Entry(gui, borderwidth=2, relief="groove")
    amount_txt.grid(row=coin_row+1, column=3)
    add_coin = Button(gui, text="Add Coin", bg="gray", fg="Orange", command=insert_coin, font="Roboto 12 bold",
                      padx="5", pady="5", borderwidth=2, relief="groove")
    add_coin.grid(row=coin_row+1, column=4, sticky=N+S+E+W)

    # update coin
    pid_update = Entry(gui, borderwidth=2, relief="groove")
    pid_update.grid(row=coin_row+2, column=0)
    symbol_update = Entry(gui, borderwidth=2, relief="groove")
    symbol_update.grid(row=coin_row+2, column=1)
    price_update = Entry(gui, borderwidth=2, relief="groove")
    price_update.grid(row=coin_row+2, column=2)
    amount_update = Entry(gui, borderwidth=2, relief="groove")
    amount_update.grid(row=coin_row+2, column=3)
    update_coin_txt = Button(gui, text="Update Coin", bg="gray", fg="Orange", command=update_coin, font="Roboto 12 bold",
                             padx="5", pady="5", borderwidth=2, relief="groove")
    update_coin_txt.grid(row=coin_row+2, column=4, sticky=N+S+E+W)

    # delete coin
    pid_delete = Entry(gui, borderwidth=2, relief="groove")
    pid_delete.grid(row=coin_row+3, column=0)
    delete_coin_txt = Button(gui, text="Delete Coin", bg="gray", fg="Orange", command=delete_coin, font="Roboto 12 bold",
                             padx="5", pady="5", borderwidth=2, relief="groove")
    delete_coin_txt.grid(row=coin_row+3, column=4, sticky=N+S+E+W)

    paid = Label(gui, text="${0:.2f}".format(total_current-gross_pl), bg="#142E54", fg="white", font="Roboto 12 bold",
                 padx="5", pady="5", borderwidth=2, relief="groove")
    paid.grid(row=coin_row, column=4, sticky=N+S+E+W)
    grossV = Label(gui, text="${0:.2f}".format(total_current), bg="#142E54", fg="white", font="Roboto 12 bold",
                   padx="5", pady="5", borderwidth=2, relief="groove")
    grossV.grid(row=coin_row, column=5, sticky=N+S+E+W)
    totPL = Label(gui, text="${0:.2f}".format(gross_pl), bg="#142E54", fg=font_color(float(gross_pl)), font="Roboto 12 bold",
                  padx="5", pady="5", borderwidth=2, relief="groove")
    totPL.grid(row=coin_row, column=7, sticky=N+S+E+W)

    api = ""

    refresh = Button(gui, text="Refresh", bg="gray", fg="Orange", command=reset, font="Roboto 12 bold",
                     padx="5", pady="5", borderwidth=2, relief="groove")
    refresh.grid(row=coin_row+1, column=7, sticky=N+S+E+W)


    def app_nav():
        def clear_all():
            curobj.execute("DELETE FROM coin")
            con.commit()
            messagebox.showinfo("Portfolio Notification",
                                "Portfolio Cleared")
            reset()

        menu = Menu(gui)
        file_item = Menu(menu)
        file_item.add_command(label='clear portfolio', command=clear_all)
        file_item.add_command(label='close app', command=close_app)
        menu.add_cascade(label="File", menu=file_item)
        gui.config(menu=menu)

    app_nav()

def app_header():
    headList = [None, None, None, None, None, None, None, None]
    headers = ["Portfolio ID", "Coin Name",  "Cost Price", "Coins Owned", "Amount Paid",
               "Current Value", "P/L per coin", "Total P/L"]

    cur_column = 0
    for head in headers:
        headList[cur_column] = Label(gui, text=head, bg="#142E54", fg="white", font="Roboto 12 bold",
                                     padx="5", pady="5", borderwidth=2, relief="groove")
        headList[cur_column].grid(row=0, column=cur_column, sticky=N+S+E+W)
        cur_column += 1

colors = ["gray", "white"]
app_header()
my_portfolio()

gui.mainloop()

curobj.close()
con.close()
