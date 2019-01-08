require 'RSpec'
require 'selenium-webdriver'
require 'cucumber'


Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"
browser = Selenium::WebDriver.for :chrome
browser.get("https://demo.bompracredito.com.br/v2/cadastrobasico/endereco?id=5b6b2160-ce26-4449-ba2a-a9cf00e316d9")

cep = browser.find_element(id: "homeAddress.cep")
cep.send_keys("01317-000")
sleep 2

rua = browser.find_element(id: "homeAddress.streetAddress")
rua.send_keys("Rua Frei Caneca")
sleep 2

numero = browser.find_element(id: "homeAddress.number")
numero.send_keys("123")
sleep 2

complemento = browser.find_element(id: "homeAddress.additionalData")
complemento.send_keys("b")
sleep 2

bairro = browser.find_element(id: "homeAddress.neighborhood")
bairro.send_keys("Consolação")
sleep 2

cidade = browser.find_element(id: "homeAddress.city")
cidade.send_keys("São Paulo")
sleep 2

cidade = browser.find_element(id: "homeAddress.mobilePhone")
cidade.send_keys("(11)996459117")
sleep 2

cidade = browser.find_element(id: "homePhone")
cidade.send_keys("(11)12345678")
sleep 2

continuar = browser.find_element(id: "button-borrower-info")
