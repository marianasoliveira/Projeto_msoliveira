require 'RSpec'
require 'selenium-webdriver'
require 'cucumber'


Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"
browser = Selenium::WebDriver.for :chrome
browser.get("https://www.bompracredito.com.br/v2/cadastrobasico/endereco?id=87e71646-a1f4-496a-b44f-a9ca0161da7b")

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