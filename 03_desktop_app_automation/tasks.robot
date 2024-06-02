*** Settings ***
Documentation     RPA Desktop Related Keywords Example
Library           PythonLibrary/RPA_Desktop.py
Resource          KeywordLibrary/desktop.robot

*** Tasks ***
Example of RPA Desktop Library
    Open Stocks Application On MAC
    Search Stock
    Quit Stock Application
