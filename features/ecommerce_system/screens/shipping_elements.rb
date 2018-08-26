require 'site_prism'

module Pages
    class Shipping < SitePrism::Page        
        def elements_page
            {
                check_agreement: '$("input[id=\'cgv\'][type=\'checkbox\']").click();',
                verify_check: 'div[class="checker"] span[class="checked"]',
                must_agree_terms: 'p[class="fancybox-error"]',
                close_pop_up: 'a[class="fancybox-item fancybox-close"]',
                process_carrier: 'button[name="processCarrier"]'
            }
        end

        def process_carrier
            find(elements_page[:process_carrier]).click
        end

        def must_agree_terms
            elements_page[:must_agree_terms]
        end

        def close_pop_up
            find(elements_page[:close_pop_up]).click
        end

        def agreement_check
        page.execute_script(elements_page[:check_agreement])
        end
    end
end