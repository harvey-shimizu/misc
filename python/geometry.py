#coding:utf-8
import tkinter as tk
import tkinter.messagebox as tmsg

def ButtonClick():
    tmsg.showinfo("入力されたテキスト", editbox1.get())

root = tk.Tk()
root.geometry("400x150")
root.title("数当てゲーム")

label1 = tk.Label(root, text="数を入力してね。", font=("Helvetica", 14))
label1.place(x = 20, y =20)

editbox1 = tk.Entry(width = 4, font=("Helvetica", 14))
editbox1.place(x = 20, y = 60)

button1 = tk.Button(root, text = "チェック", font=("Heletica", 14), command=ButtonClick)
button1.place(x =120, y=60)

root.mainloop()

