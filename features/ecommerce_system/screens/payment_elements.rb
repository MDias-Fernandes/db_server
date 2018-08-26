require 'site_prism'

module Pages
    class Payment < SitePrism::Page        
        def elements_page
            {
                pay_bank: 'a[class="bankwire"][title="Pay by bank wire"]',
                pay_check: 'a[class="cheque"][title="Pay by check."]',
                amount: 'span[id="amount"]',
                confirm_order: 'button[class="button btn btn-default button-medium"][type="submit"]',
                text_confirmation: '//*[contains(text(),"Your order on My Store is complete.")]'
            }
        end

        def pay_bank
            find(elements_page[:pay_bank]).click
        end

        def pay_check
            find(elements_page[:pay_check]).click
        end

        def confirm_amount
            elements_page[:amount]
        end

        def confirm_order
            find(elements_page[:confirm_order]).click        
        end

        def text_confirmation
            elements_page[:text_confirmation]
        end
    end
end