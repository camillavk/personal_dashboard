require 'rails_helper'

context 'To do list' do
  it 'should allow the user to create a To do list' do
    visit '/'
    click_link 'Add To Do list'
    fill_in 'Name', with: 'Today'
    click_button 'Create list'
    expect(page).to have_content 'Today'
  end
end
