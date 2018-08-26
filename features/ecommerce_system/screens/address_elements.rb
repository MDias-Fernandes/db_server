require 'site_prism'

module Pages
    class AddressFlowScreen < SitePrism::Page        
        def elements_page
            {
                leave_message: 'textarea[name="message"]',
                process_address: 'button[name="processAddress"]'
            }
        end

        def leave_message(message)
            find(elements_page[:leave_message]).send_keys(message)   
        end

        def process_address
            find(elements_page[:process_address]).click
        end
    end
end