*** Settings ***
Documentation        Aqui estarão presentes todos os recursos que compõem o projeto

##############################################
#                 Libraries                  #
##############################################
Library        SeleniumLibrary

##############################################
#                 Keywords                   #
##############################################
Resource       resources/keywords/kws_webautomation.robot

##############################################
#                 Pages                      #
##############################################
Resource       resources/page/pages_home.robot

##############################################
#                 Hooks                      #
##############################################
Resource       hooks_web.robot