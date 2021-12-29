require 'page_module'
require 'spec_helper'

describe "Testing on Suacedemo page" do

    before :each do
      visit "https://www.saucedemo.com/"
    end

    context "Login and logout" do
      it "Suacedemo login page is alive" do
        expect(page.title).to be == "Swag Labs"
      end

      it "Login  and logout with a Standar user" do
        login_page = Pages::Login.new()
        login_page.fill_enter("standard_user", "secret_sauce")

        expect(page).to have_css "span.title", text: "Products", visible: false

        header_section = Pages::Header.new()
        header_section.logout

        expect(page.title).to be == "Swag Labs"
      end

      it "Login with a Locked user" do
        login_page = Pages::Login.new()
        login_page.fill_enter("locked_out_user", "secret_sauce")

        expect(page).to have_css "div.error-message-container", text: "Epic sadface: Sorry, this user has been locked out."
      end

      it "Login with a Problem user" do
        login_page = Pages::Login.new()
        login_page.fill_enter("problem_user", "secret_sauce")

        header_section = Pages::Header.new()
        header_section.about

        expect(page.title).to be == "Error 404 | Sauce Labs"
      end

      it "Login without username" do
        login_page = Pages::Login.new()
        login_page.fill_enter("", "")
    
        expect(page).to have_css "div.error-message-container", text: "Epic sadface: Username is required"
      end

      it "Login without password" do
        login_page = Pages::Login.new()
        login_page.fill_enter("standard_user", "")

        expect(page).to have_css "div.error-message-container", text: "Epic sadface: Password is required"
      end
    end

    after :each do
      page.reset_session!
    end
end
