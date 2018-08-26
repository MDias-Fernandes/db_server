require 'site_prism'

module Pages
    class CreateAccount < SitePrism::Page        
        def elements_page
            {
                email_txt_box: 'input[id="email_create"]',
                create_btn: 'button[id="SubmitCreate"]',
                gender: '$("input[id=\'id_gender2\']").trigger(\'click\');',
                first_name: 'input[id="customer_firstname"]',
                last_name: 'input[id="customer_lastname"]',
                email: 'input[id="email"]',
                password: 'input[id="passwd"]',
                birth_day: 'select[id="days"]',
                birth_month: 'select[id="months"]',
                birth_year: 'select[id="years"]',
                newsletter: 'input[id="newsletter"]',
                offers: 'input[id="optin"]',
                first_name2: 'input[id="firstname"]',
                last_name2: 'input[id="lastname"]',
                company: 'input[id="company"]',
                address1: 'input[id="address1"]',
                address2: 'input[id="address2"]',
                city: 'input[id="city"]',
                state: 'div[id="uniform-id_state"] select[id="id_state"]',
                zip_code: 'input[id="postcode"]',
                country: 'select[id="id_country"]',
                add_info: 'textarea[id="other"]',
                home_phone: 'input[id="phone"]',
                mobile_phone: 'input[id="phone_mobile"]',
                reference: 'input[id="alias"]',
                register_btn: 'button[id="submitAccount"]'
            }
        end

        def put_email_address_and_confirm(email_address)
            find(elements_page[:email_txt_box]).send_keys(email_address)
            find(elements_page[:create_btn]).click
            sleep(5)
        end

        def gender
            page.execute_script(elements_page[:gender])
            page.execute_script(elements_page[:gender])
        end

        def register_user
            find(elements_page[:register_btn]).click
            sleep(5)
        end
    end
end