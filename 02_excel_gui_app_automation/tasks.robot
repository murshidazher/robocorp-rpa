*** Settings ***
Documentation   Excel Application Module Example
Resource        KeywordLibrary/excel_app.robot


*** Tasks ***
GUI Based Excel Application Task1
    Add New WorkSheet Into WorkBook       ./DataSets/TestXLSFile.xls        policydata

*** Tasks ***
GUI Based Excel Application Task2
    Activate WorkSheet For WorkBook      ./DataSets/TestXLSFile1.xls        policydata
    Enter Data Into Cell    TestData1    1   1
    Enter Data Into Cell    TestData2    1   2
    Save And Exit WorkSheet

*** Tasks ***
GUI Based Excel Application Task3
    Activate WorkSheet For WorkBook      ./DataSets/TestXLSFile.xls    ./output/Sample-spreadsheet-file   False
    ${CELL_DATA} =  Get Data From Cell   5   2
    Log    ${CELL_DATA}
    Save And Exit WorkSheet



