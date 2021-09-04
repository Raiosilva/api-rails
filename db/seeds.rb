namespace :dev do
    puts 'Register Customers'

    5.times do |i|
        Customer.create!(
            fantasyName: Faker::Company.name,
            customerName: Faker::Company.suffix,
            taxId: Faker::Company.brazilian_company_number(formatted: true),
            status: true,
            stateRegistration: Faker::Company.duns_number
        )    
    end

    puts 'Customers registers with success'

  
    puts 'Register types operations'

    operations = %w(Ground Sea Air)

    # Customer.all.each do |customer|
    #     operations.each do |operation|
    #         Operation.create!(
    #             description: operation,
    #             customer: customer
    #         )    
    #     end
    # end

    Customer.all.each do |customer|
        Random.rand(4).times do |i|
            operation = Operation.create!(
                description: Faker::Job.field
            )    
        end
    end

    puts 'Types operations registers with success'

    puts 'Register Facilities'

        Customer.all.each do |customer|
            Random.rand(4).times do |i|
                facility = Facility.create!(
                    cep: Faker::Address.zip_code,
                    complement: Faker::Address.secondary_address,
                    number: Faker::Address.building_number,
                    city: Faker::Address.city,
                    state: Faker::Address.state,
                    country: Faker::Address.country,
                    description: Faker::Address.street_name,
                    customer: customer
                )
                # customer.facilities << facility
                # customer.save!
            end
        end

    puts 'Facilities registers with success'
    
end