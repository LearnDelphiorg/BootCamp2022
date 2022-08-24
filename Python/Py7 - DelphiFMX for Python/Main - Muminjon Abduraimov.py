#-------------------------------------------------------------------------------
# Name:        Main
# Purpose:
#
# Author:      Muminjon
#
# Created:     16/08/2022
# Copyright:   (c) Muminjon 2022
# Licence:     <FREE>
#-------------------------------------------------------------------------------

from delphifmx import *
import requests
import os


class Main_Window(Form):
    def __init__(self, Owner):
        self.Caption = "Number Validation Demo"
        self.SetBounds(100, 100, 800, 640)

        self.__sm = StyleManager()
        self.__sm.SetStyle(StyleStreaming().LoadFromFile(os.path.join(os.getcwd(), "Transparent.style")))

        self.api_label = Label(self)
        self.api_label.SetProps(Parent=self, Text="Insert Your API Access Key")
        self.api_label.SetBounds(10, 10, 150, 25)

        self.api_text_box = Edit(self)
        self.api_text_box.SetProps(Parent=self)
        self.api_text_box.SetBounds(10, 30, 250, 20)

        self.number_label = Label(self)
        self.number_label.SetProps(Parent=self, Text="Enter Phone Number for Validatioon")
        self.number_label.SetBounds(10, 60, 200, 25)

        self.number_text_box = Edit(self)
        self.number_text_box.SetProps(Parent=self)
        self.number_text_box.SetBounds(10, 80, 250, 20)

        self.request_btn = Button(self)
        self.request_btn.Parent = self
        self.request_btn.SetBounds(150, 175, 100, 35)
        self.request_btn.Text = "Check Number"
        self.request_btn.OnClick = self.__send_api_request_on_click

        self.response_memo = Memo(self)
        self.response_memo.Parent = self
        self.response_memo.SetBounds(300, 30, 300, 350)



    def __send_api_request_on_click(self, Sender):
        url = "https://api.apilayer.com/number_verification/validate?number=" + self.number_text_box.Text

        payload = {}
        headers= {
          "apikey": self.api_text_box.Text
        }

        response = requests.request("GET", url, headers=headers, data = payload)

        status_code = response.status_code
        result = response.text

        self.response_memo.Lines.Append(result)



def main():
    Application.Initialize()
    Application.Title = "Coding Bootcamp 2022 - DelphiFMX4Python"
    app = Main_Window(Application)
    Application.MainForm = app
    app.Show()
    Application.Run()
    app.Destroy()


if __name__ == '__main__':
    main()
