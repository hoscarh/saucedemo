require 'capybara/dsl'

include Capybara::DSL

module Pages

  class Login
    def fill_enter(username, password)
      fill_in 'user-name', with: username
      fill_in 'password', with: password
      click_button 'login-button'
    end
  end

  class Header
    def logout
      click_button 'react-burger-menu-btn'
      click_link 'logout_sidebar_link'
    end

    def about
      click_button 'react-burger-menu-btn'
      click_link 'about_sidebar_link'
    end
  end
end
