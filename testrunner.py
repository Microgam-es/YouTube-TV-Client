import tkinter as tk
from tkinterweb import TkinterWeb
# basic python test
class BrowserWindow:
    def __init__(self, root):
        self.root = root
        self.root.attributes('-fullscreen', True)

        # TkinterWeb-Widget erstellen
        self.browser_widget = TkinterWeb(self.root, lambda x: print(x), None)
        self.browser_widget.pack(expand=True, fill="both")

        # Beispiel-URL öffnen (du kannst dies durch deine gewünschte URL ersetzen)
        self.load_webpage("https://youtube.com/tv")

    def load_webpage(self, url):
        # Beispiel-User-Agent setzen (du kannst dies nach Bedarf ändern)
        user_agent = """
Mozilla/5.0 (MicroBSD; Tizen 2.3; SmartHub; SMART-TV; SmartTV; U; Maple2012) microgam.esSmartTV/2024.1.2-0001 (TV; Microgam.es; 17_KANTM_UHD; microgam.es; Tizen 3.0)        
"""

        # User-Agent im TkinterWeb-Widget setzen
        self.browser_widget.set_user_agent(user_agent)

        # Webseite laden
        self.browser_widget.load_url(url)

if __name__ == "__main__":
    root = tk.Tk()
    browser_window = BrowserWindow(root)
    root.mainloop()
