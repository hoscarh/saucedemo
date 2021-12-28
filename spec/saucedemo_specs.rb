require 'spec_helper.rb'

describe 'Open Suacedemo page' do
    it "should login to home page" do
        visit 'https://www.saucedemo.com/'
        # Login
        fill_in 'user-name', with: 'standard_user'
        fill_in 'password', with: 'secret_sauce'
        click_button 'login-button'
        expect(page).to have_css 'span.title', text: 'Products', visible: false
        # Logout
        click_button 'react-burger-menu-btn'
        click_link 'logout_sidebar_link'
        expect(page).to have_content 'Accepted usernames are'
    end
end