require 'rails_helper'

context 'weather' do
  it 'should show user location on homepage' do
    visit '/'
    click_link 'Add location'
    fill_in 'Name', with: 'London'
    click_button 'Add location'
    expect(page).to have_content 'London'
  end

  it 'should show current temp of location on homepage' do
    visit '/'
    click_link 'Add location'
    fill_in 'Name', with: 'London'
    click_button 'Add location'
    expect(page).to have_content 'Current Temp'
  end
end
