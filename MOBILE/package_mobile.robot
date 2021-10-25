*** Settings ***
Documentation        Aqui estarão presentes todos os recursos que compõem o projeto

##############################################
#                 Libraries                  #
##############################################
Library        AppiumLibrary

##############################################
#                 Keywords                   #
##############################################
Resource       resources/keywords/kws_mobileautomation.robot

##############################################
#                 Pages                      #
##############################################
Resource       resources/page/page_tela.robot

##############################################
#                 Hooks                      #
##############################################
Resource       hooks_mobile.robot