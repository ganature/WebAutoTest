# coding=utf-8

import ConfigParser


class ConfigLibrary (object):
    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = '1.0.1'

    def __init__(self):
        """
        Read Or Write Configuration File
        """
        self.conf = None
        self.filename = None

    def read_config(self, filename):
        """

        :param filename: File Path
        Example：    read_config | C:\\demo.conf
        :return:
        """
        self.conf = ConfigParser.ConfigParser ()
        self.conf.read (filename)
        self.filename = filename

    def get_sections(self):
        """
        Get All Section In Conf File
        :return:
        """
        return self.conf.sections ()

    def get_option(self, section, op):
        """
        Get Value of option
        Example：
        config.conf
                [section1]
                name=user1
                [section2]
                name=user2
        ${data} | get_option | section1 | name
        log | ${data}

        run: user1
        :param section:
        :param op:
        :return:
        """
        option = self.conf.get (section, op)
        return option

    def set_option(self, section, op, value):
        self.conf.set (section, op, value)

    def add_section(self, new_section, op, value=None):
        self.conf.add_section (new_section)
        if op is None:
            self.conf.write (open (self.filename, 'w'))
        else:
            self.set_option (new_section, op, value)
