require 'RSpec'
require 'selenium-webdriver'
require 'cucumber'

Selenium::WebDriver::Chrome.driver_path="C:/chromedriver.exe"
browser = Selenium::WebDriver.for :chrome
browser.get("https://www.bompracredito.com.br/emprestimo-pessoal")

valoremprestimo = browser.find_element(id: "btnTwoThousand").click
sleep 2

qtdparcelas = browser.find_element(id: "btnTwelveTerm").click
sleep 2

nome = browser.find_element(name: "name")
nome.send_keys("Mariana Oliveira")
sleep 2

email = browser.find_element(name: "email")
email.send_keys("ti.marianaso@yahoo.com.br")
sleep 2

continuar = browser.find_element(id: "btnContinue")


#expect(browser.current_url).to eql ("https://www.bompracredito.com.br/v2/cadastrobasico?id=87e71646-a1f4-496a-b44f-a9ca0161da7b")



