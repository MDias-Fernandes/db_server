# encoding: utf-8
# !/usr/bin/env ruby

Dir[File.join(File.dirname(__FILE__), '../screens/*.rb')].each { |file| require file }

module Pages
    def main_screen
        Pages::MainScreen.new
    end

    def summary_screen
        Pages::SummaryScreen.new
    end

    def sign_in_flow
        Pages::SignInFlow.new
    end

    def address_flow_screen
        Pages::AddressFlowScreen.new
    end

    def shipping
        Pages::Shipping.new
    end

    def payment
        Pages::Payment.new
    end

    def create_account
        Pages::CreateAccount.new
    end
end