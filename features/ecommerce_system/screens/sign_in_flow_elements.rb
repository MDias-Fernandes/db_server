require 'site_prism'

module Pages
    class SignInFlow < SitePrism::Page        
        def elements_page
            {
                login_field: 'input[id="email"]',
                password_field: 'input[id="passwd"]',
                signin_button: 'button[id="SubmitLogin"]'
            }
        end

        def log_in(login, passwd)
            find(elements_page[:login_field]).send_keys(login)
            find(elements_page[:password_field]).send_keys(passwd)
            find(elements_page[:signin_button]).click       
        end
    end
end