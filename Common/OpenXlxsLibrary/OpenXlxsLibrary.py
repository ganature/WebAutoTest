# coding=utf-8

from openpyxl import load_workbook
from openpyxl import workbook
from openpyxl import formula
from openpyxl.writer.excel import ExcelWriter
from version import VERSION
import os
_version_ = VERSION
filename='F:\\MyDownloads\\data.xlsx'
test_case=[]
class OpenXlxsLibrary:

    ROBOT_LIBRARY_SCOPE = 'GLOBAL'
    ROBOT_LIBRARY_VERSION = '1.0.1'

    def __init__(self):
        """
        operate Excel 2007 or later
        """
        self.wb = None
        self.tb = None
        self.sheetNum = None
        self.sheetNames = None
        self.fileName = None

    def open_excel_xlxs(self, filename):
        """

        :param filename:
        :return:
        """
        self.fileName=filename
        self.wb=load_workbook(filename)


    def get_sheet(self,sheet_name):
        """
              Returns the name of all the worksheets in the current workbook.

              Example:

              | *Keywords*              |  *Parameters*                                      |
              | Open Excel              |  C:\\Python27\\ExcelRobotTest\\ExcelRobotTest.xls  |
              | Get Sheet By Name        |   sheet_name                                                 |

              """

        return self.wb.get_sheet_by_name(sheet_name)

    def get_sheets(self):
        """
              Returns the names of all the worksheets in the current workbook.

              Example:

              | *Keywords*              |  *Parameters*                                      |
              | Open Excel              |  C:\\Python27\\ExcelRobotTest\\ExcelRobotTest.xls  |
              | Get Sheets Names        |                                                    |

              """
        return self.wb.get_sheet_names()
    def get_all_sheet_names(self):
        """
        Returns the names of all the worksheets in the current workbook.

        Example:

        | *Keywords*              |  *Parameters*                                      |
        | Open Excel              |  C:\\Python27\\ExcelRobotTest\\ExcelRobotTest.xls  |
        | Get Sheets Names        |                                                    |

        """
        sheetNames = self.wb.sheet_names()
        return sheetNames

    def get_max_row(self,sheet_name):
        """

        :param sheet_name:
        :return:
        """
        sheet=self.get_sheet(sheet_name)
        return sheet.max_row

    def get_max_col(self,sheet_name):
        """

        :param sheet_name:
        :return:
        """
        sheet=self.get_sheet(sheet_name)
        return  sheet.max_column

    def get_TestCase_Parmerner(self,sheet_name,test_case_name):
        """

        :param sheet_name: sheet名，也是测试模块名
        :param test_case_name: 测试方法名
        :return: 测试参数列表
        """
        data_dic = {}
        max_row=self.get_max_row(sheet_name)
        max_column=self.get_max_col(sheet_name)
        ws=self.get_sheet(sheet_name)
        for ro in range (1, max_row + 1):
            temp_list = []
            pid = ws.cell (row=ro, column=1).value
            for co in range (2, max_column + 1):
                w = ws.cell (row=ro, column=co).value
                temp_list.append (w)
            data_dic[pid] = temp_list
        return data_dic[test_case_name]

    def get_cols_vaules(self,sheet_name):
        max_row = self.get_max_row (sheet_name)
        max_column = self.get_max_col (sheet_name)
        ws = self.get_sheet (sheet_name)
        col_list=[]
        for ro in range (2, max_row + 1):
            list = []
            for col in range (2, max_column + 1):
                c = ws.cell (row=ro, column=col).value
                c = str (c)
                list.append (c)
            col_list.append(list)
        return col_list

    def get_data(self,sheet_name,test_case_name):
        data=self.get_TestCase_Parmerner(sheet_name,test_case_name)
        print type(data)
        return data[0]

    def set_filename(self,filename):
        dest_filename=filename
        return dest_filename

    def new_excel_writer(self):
        """

        :return: 返回一个写入Excel的对象
        """
        wb = workbook()
        ew = ExcelWriter(workbook=wb)
        return ew

    def creat_sheet(self,title='sheet1'):
        self.wb.create_sheet(title)

    def set_cell_value(self,location,value):
        pass

if __name__=='__main__':
    op=OpenXlxsLibrary()
    op.open_excel_xlxs(filename)
    li=op.get_TestCase_Parmerner(sheet_name='LoginTest',test_case_name='LoginTest001')
    print li
    print type(li)
    print  type(li)

