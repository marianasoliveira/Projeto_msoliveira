# AlTERAÇÕES PODEM SER REALIZADAS ATRAVÉS DA MASSA DE DADOS COMENTADA 

require 'RSpec'
require 'selenium-webdriver'
require 'cucumber'


Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"
browser = Selenium::WebDriver.for :chrome
browser.get("https://demo.bompracredito.com.br/v2/cadastrobasico?id=5b6b2160-ce26-4449-ba2a-a9cf00e316d9")

cpf = browser.find_element(id: "borrower.cpf")
cpf.send_keys("385.065.498-25")
sleep 3

dtnascimento = browser.find_element(id: "borrower.dateOfBirth")
dtnascimento.send_keys("29/09/1988")
sleep 2

renda = browser.find_element(id: "borrower.monthlyGrossIncome")
renda.send_keys("5.000,00")
sleep 2

sexo = browser.find_element(id: "borrower.gender").click
sleep 2

statuscivil = browser.find_element(id: "borrower.maritalStatus").click
sleep 2


#CLIENTE COM OCUPAÇÃO ASSALARIADO E PROFISSÃO DESENHISTA
ocupacao = browser.find_element(id:"borrower.jobType")
    Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.jobType")).select_by(:value, "0")
    browser.find_element(:id, "borrower.jobType").click
    sleep 1
profissao = browser.find_element(id:"borrower.profession")
    Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.profession")).select_by(:value, "66543223-cebf-40f2-998d-8387a7761ff4")
    browser.find_element(:id, "borrower.profession").click
    sleep 1 

#  CLIENTE COM OCUPAÇÃO EMPRESÁRIO E PROFISSÃO PISCICULTOR
# ocupacao = browser.find_element(id:"borrower.jobType")
# Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.jobType")).select_by(:value, "5")
# browser.find_element(:id, "borrower.jobType").click
# sleep 1
# profissao = browser.find_element(id:"borrower.profession")
# Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.profession")).select_by(:value, "5579cb34-a823-4ccb-8aa5-a66c81acf1a9")
# browser.find_element(:id, "borrower.profession").click
# sleep 1   


#  CLIENTE COM OCUPAÇÃO ESTUDANTE E PROFISSÃO ESTUDANTE
# ocupacao = browser.find_element(id:"borrower.jobType")
# Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.jobType")).select_by(:value, "6")
# browser.find_element(:id, "borrower.jobType").click
# sleep 1
# profissao = browser.find_element(id:"borrower.profession")
# Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.profession")).select_by(:value, "null")
# browser.find_element(:id, "borrower.profession").click
# sleep 1   

grau = browser.find_element(id:"borrower.educationLevel")
    Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.educationLevel")).select_by(:value, "2")
    browser.find_element(:id, "borrower.educationLevel").click
    sleep 1 

conta = browser.find_element(id:"borrower.bankingData.bankNumber")
    Selenium::WebDriver::Support::Select.new(browser.find_element(:id, "borrower.bankingData.bankNumber")).select_by(:value, "033")
    browser.find_element(:id, "borrower.bankingData.bankNumber").click
    sleep 1 

    
cheque = browser.find_element(id: "borrower.bankingData.hasCheckbook").click
sleep 2

restricao = browser.find_element(id: "borrower.hasNegativeCreditRecord2").click
sleep 2

imovel = browser.find_element(id: "hasProperty").click
sleep 2

automovel = browser.find_element(id: "hasVehicle").click
sleep 2


continuar = browser.find_element(id: "button-borrower-info")

#expect(browser.current_url).to eql ("https://www.bompracredito.com.br/v2/cadastrobasico/endereco?id=87e71646-a1f4-496a-b44f-a9ca0161da7b")
