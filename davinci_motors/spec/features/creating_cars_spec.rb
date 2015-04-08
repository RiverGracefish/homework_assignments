require 'spec_helper'

feature 'Creating Cars' do
  scenario 'can create a car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1967'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content('1967 Ford Mustang created')
# Our test doesn't verify that the list of cars including the price show up on the home page
    expect(page).to have_content("$2,300.00")
  end

# Can you add a test for adding a second car?
  scenario 'can create a second car' do
    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Ford'
    fill_in 'Model', with: 'Mustang'
    fill_in 'Year', with: '1969'
    fill_in 'Price', with: '2300'

    click_button 'Create Car'

    expect(page).to have_content("1969 Ford Mustang created")
    expect(page).to have_content("$2,300.00")

    visit '/'

    click_link 'New Car'

    fill_in 'Make', with: 'Toyota'
    fill_in 'Model', with: 'Camry'
    fill_in 'Year', with: '2001'
    fill_in 'Price', with: '1980'

    click_button 'Create Car'

    expect(page).to have_content("2001 Toyota Camry created")
    expect(page).to have_content("Ford Mustang 1969 $2,300.00")
    expect(page).to have_content("Toyota Camry 2001 $1,980.00")
  end
end
