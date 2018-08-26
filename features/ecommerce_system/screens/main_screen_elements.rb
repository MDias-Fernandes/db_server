require 'site_prism'

module Pages
    class MainScreen < SitePrism::Page        
        def elements_page
            {
                header_logo: 'div[id="header_logo"]',
                search_box: 'input[id="search_query_top"]',
                search_btn: 'button[name="submit_search"]',
                page_item: 'div[class="product-container"]',
                add_product_cart: 'div[class="button-container"] a[data-id-product="2"]',
                product_name: '//span[contains(text(),"Blouse")]',
                proceed_to_checkout: 'a[title="Proceed to checkout"]'
            }
        end

        def verify_page
            elements_page[:header_logo]
        end

        def search_item(query_search)
            find(elements_page[:search_box]).send_keys(query_search)
            find(elements_page[:search_btn]).click
            sleep(5)
        end

        def add_to_cart
            find(elements_page[:page_item]).hover
            find(elements_page[:add_product_cart]).click
            sleep(5)
        end

        def verify_product_name
            elements_page[:product_name]
        end

        def proceed_to_checkout
            find(elements_page[:proceed_to_checkout]).click
            sleep(5)
        end
    end
end