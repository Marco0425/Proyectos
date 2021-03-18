from tkinter import *
from tkinter import ttk
from vistas.navega import *

if __name__ == '__main__':
    ventana = Tk()
    ventana.geometry("900x640")
    ventana.resizable(width=0, height=0)
    ventana.title("Sistema de arboles")
    ventana.iconbitmap("img/logo-ipn.ico")
    ventana.configure(background="whitesmoke")
    #ventana.configure(background="white")

    miImafen=PhotoImage(file="img/arbol-digital.png")
    miImafen=miImafen.subsample(1)
    Label(ventana,image=miImafen).place(x=390,y=190)
    Label(ventana,text="BIENVENIDO ",font=("Arial Black",20)).place(x=360,y=100)
    Label(ventana,text="Al sistema  de arboles de la CDMX",font=("Arial Black",15)).place(x=290,y=190)
   
    def empezar():
         
         #top = Toplevel()
         
         app = aplicacion(ventana)
         
         #top.mainloop()
         #ventana.destroy()
          
    Button(ventana, text='Empezar', command=empezar,font=("Arial Black",11)).place(x=380,y=500)
    ventana.mainloop()
