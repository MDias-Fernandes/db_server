When("click on signin option") do
    main_screen.signin_account
end

When("provide a email address to create an account") do
    create_account.put_email_address_and_confirm(@email_address)
    sleep(5)
end

When("input my personal information") do
    create_account.gender
    find(create_account.elements_page[:first_name]).send_keys(@first_name)
    find(create_account.elements_page[:last_name]).send_keys(@last_name)
    find(create_account.elements_page[:password]).send_keys(@password)
    find(create_account.elements_page[:address1]).send_keys(@address)
    find(create_account.elements_page[:city]).send_keys(@city)
    #Comentário no DOM: <!-- if customer hasn't update his layout address, country has to be verified but it's deprecated -->
    #find(:xpath, create_account.elements_page[:state]).select(@state)
    find(create_account.elements_page[:zip_code]).send_keys(@zip_code)
    find(create_account.elements_page[:mobile_phone]).send_keys(@mobile_phone)
    sleep(5)
end

When("click on Register") do
    create_account.register_user
end

Then("can see the private options to my user account") do
    expect(page).to have_text("Welcome to your account. Here you can manage all of your personal information and orders.")
end