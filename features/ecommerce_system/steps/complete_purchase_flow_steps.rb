Given("that i access the main screen") do
    visit(CONFIG['app_url'])
    expect(page).to have_css(main_screen.verify_page)
end

When("choose a item") do
    main_screen.search_item("BLOUSE")
end

When("add it to my cart") do
    main_screen.add_to_cart
end

When("proceed to checkout") do
    expect(page).to have_xpath(main_screen.verify_product_name)
    main_screen.proceed_to_checkout
end

When("check if the product has been added successfuly") do
    expect(page).to have_css('tr[id="product_2_7_0_0"]')
    expect(page).to have_css('td[id="total_product"]')
    expect(page).to have_css('td[id="total_shipping"]')
    expect(page).to have_css('td[id="total_price_without_tax"]')
    expect(page).to have_css('td[id="total_tax"]')
    expect(page).to have_css('span[id="total_price"]')
    summary_screen.confirm_checkout
end

When("provide valid login and password credentials") do
    sign_in_flow.log_in(CONFIG['user']['email'], CONFIG['user']['password'])
end

When("check the address") do
    expect(page).to have_text(CONFIG['user']['complete_name'])
    expect(page).to have_text(CONFIG['user']['company'])
    expect(page).to have_text(CONFIG['user']['neighborhood'])
    expect(page).to have_text(CONFIG['user']['Street'])
    expect(page).to have_text(CONFIG['user']['country'])
    expect(page).to have_text(CONFIG['user']['data_1'])
    expect(page).to have_text(CONFIG['user']['data_2'])
    address_flow_screen.leave_message("Data confirmed successfuly")
    address_flow_screen.process_address
end

When("check the Shipping") do
    shipping.process_carrier
    shipping.must_agree_terms
    shipping.close_pop_up
    shipping.agreement_check
    shipping.process_carrier
end

When("finalize it with the payment data") do
    expect(page).to have_css('td[id="total_product"]')
    expect(page).to have_css('td[id="total_shipping"]')
    expect(page).to have_css('td[id="total_tax"]')
    expect(page).to have_css('span[id="total_price"]')
    payment.pay_bank
    expect(page).to have_css(payment.confirm_amount)
    payment.confirm_order
end

Then("the purchase it's finished successfuly") do
    expect(page).to have_xpath(payment.text_confirmation)
    sleep(5)
end