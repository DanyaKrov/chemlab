from kivy.app import App
from kivy.uix.button import Button
from kivy.uix.boxlayout import BoxLayout
from kivy.uix.screenmanager import ScreenManager, Screen
from kivy.uix.recycleview import RecycleView
from kivy.uix.gridlayout import GridLayout
from kivy.core.window import Window
from kivy.config import ConfigParser
from kivy.uix.textinput import TextInput
from kivy.uix.label import Label
from kivy.metrics import dp
from datetime import datetime
import kivy
from kivy.uix.behaviors import ButtonBehavior
from kivy.uix.image import Image
import os
import ast
import time
import theory
import chains


class MenuScreen(Screen):
    def __init__(self, **kw):
        super(MenuScreen, self).__init__(**kw)
        box = BoxLayout(orientation='vertical')
        box.add_widget(Button(on_press=lambda x:
                              set_screen('theory'),
                              background_normal='img/theory.png',
                              )) #окно с теорией
        box.add_widget(Button(text='Цепочки',
                              on_press=lambda x: set_screen('chains'),
                              background_normal='img/chains.png')) #окно с цепочками

        self.add_widget(box)


class Theory(Screen):
    def __init__(self, **kw):
        super(Theory, self).__init__(**kw)

    def on_enter(self):

        self.layout = GridLayout(cols=1, spacing=10, size_hint_y=None)
        self.layout.bind(minimum_height=self.layout.setter('height'))
        back_button = Button(text='Назад', on_press=lambda x: set_screen('menu'),
                             size_hint_y=None, height=dp(40),
                             #background_normal='img/back.png'
                             ) #кнопка возвращения в главное меню
        self.layout.add_widget(back_button)
        self.txt1 = TextInput(text='', multiline=False, height=dp(40),
                              size_hint_y=None, hint_text="Название элемента")
        self.layout.add_widget(self.txt1)
        root = RecycleView(size_hint=(1, None), size=(Window.width,
                                                      Window.height))
        root.add_widget(self.layout)
        self.add_widget(root)
        btn1 = Button(text='Поиск', size_hint_y=None, height=dp(80),
                      #background_normal='img/browse.png'
                      ) #кнопка поиска
        btn1.bind(on_press=self.buttonClick)
        self.layout.add_widget(btn1)

        browse = ast.literal_eval(
            App.get_running_app().config.get('General', 'user_data')) #получение ответа при поиске

        for f, d in sorted(browse.items(), key=lambda x: x[1]):
            fd = f.decode('u8') + ' ' + (datetime.fromtimestamp(d).strftime('%Y-%m-%d'))
            btn = Button(text=fd, size_hint_y=None, height=dp(40))
            self.layout.add_widget(btn)

    def buttonClick(self, btn1):
        if not self.txt1.text:
            return
        result = theory.collect(self.txt1.text)
        self.app = App.get_running_app()
        self.app.user_data = ast.literal_eval(
            self.app.config.get('General', 'user_data'))
        self.app.user_data[self.txt1.text.encode('u8')] = result

        self.app.config.set('General', 'user_data', self.app.user_data)
        self.app.config.write()
        self.txt1.text = ''

    def on_leave(self):

        self.layout.clear_widgets() #отключение виджетов


class Chains(Screen):
    def buttonClicked(self, btn1):
        if not self.txt1.text:
            return
        result = chains.collect(self.txt1.text)
        self.app = App.get_running_app()
        self.app.user_data = ast.literal_eval(
            self.app.config.get('General', 'user_data'))
        self.app.user_data[self.txt1.text.encode('u8')] = result

        self.app.config.set('General', 'user_data', self.app.user_data)
        self.app.config.write()

        text = "Последний добавленный элемент  " + self.txt1.text #последний элемент
        self.result.text = text
        self.txt1.text = ''

    def __init__(self, **kw):
        super(Chains, self).__init__(**kw)
        box = BoxLayout(orientation='vertical')
        back_button = Button(text='< Назад в главное меню', on_press=lambda x:
                             set_screen('menu'), size_hint_y=None, height=dp(40))
        box.add_widget(back_button)
        self.txt1 = TextInput(text='', multiline=False, height=dp(40),
                              size_hint_y=None, hint_text="Название вещества")
        box.add_widget(self.txt1)
        btn1 = Button(text="Добавить вещество", size_hint_y=None, height=dp(40),
                      )
        btn1.bind(on_press=self.buttonClicked)
        btn2 = Button(text="Найти", size_hint_y=None, height=dp(40))
        btn2.bind(on_press=self.result1)
        box.add_widget(btn1)
        box.add_widget(btn2)
        self.result = Label(text='')
        box.add_widget(self.result)
        self.add_widget(box)

    def result1(self):
        print(1)


def set_screen(name_screen):
    sm.current = name_screen


sm = ScreenManager()
sm.add_widget(MenuScreen(name='menu'))
sm.add_widget(Theory(name='theory'))
sm.add_widget(Chains(name='chains'))


class Chemlab(App):
    def __init__(self, **kvargs):
        super(Chemlab, self).__init__(**kvargs)
        self.config = ConfigParser()

    def set_value_from_config(self):
        self.config.read(os.path.join(self.directory, '%(appname)s.ini'))
        self.user_data = ast.literal_eval(self.config.get(
            'General', 'user_data'))

    def build_config(self, config):
        config.adddefaultsection('General')
        config.setdefault('General', 'user_data', '{}')

    def get_application_config(self):
        return super(Chemlab, self).get_application_config(
            '{}/%(appname)s.ini'.format(self.directory))

    def build(self):
        return sm


if __name__ == '__main__':
    Chemlab().run()
