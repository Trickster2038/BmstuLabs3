# Generated by Selenium IDE
require 'selenium-webdriver'
require 'json'
describe 'Empty' do
  before(:each) do
    @driver = Selenium::WebDriver.for :chrome
    @vars = {}
  end
  after(:each) do
    @driver.quit
  end
  it 'empty' do
    @driver.get('http://127.0.0.1:3000/')
    @driver.manage.resize_to(550, 692)
    @driver.find_element(:id, 'search_range').click
    @driver.find_element(:name, 'commit').click
    Selenium::WebDriver::Wait.new(timeout: 30).until { @driver.find_element(:id, 'result') }
    expect(@driver.find_element(:id, 'result').text).to eq('(myScript) Result is: no such sequences to output')
  end
end
