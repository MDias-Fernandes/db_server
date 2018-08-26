require 'site_prism'

module Pages
    class SummaryScreen < SitePrism::Page        
        def elements_page
            {
                confirm_checkout: 'a[class="button btn btn-default standard-checkout button-medium"][title="Proceed to checkout"]'
            }
        end

        def confirm_checkout
            find(elements_page[:confirm_checkout]).click
            sleep(5)
        end
    end
end