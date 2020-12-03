require 'application_system_test_case'

class SessionsTest < ApplicationSystemTestCase
	test 'truth' do 
		:login
		assert true
	end 

	test 'should not login user with invalid credentials' do
		visit login_url

		fill_in 'Email', with: "ugiy"
		fill_in 'Password', with: "gygyuu"
		click_on 'Login'

		assert_text 'Email or password is invalid'
	end


end