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

context 'Tasks' do
  before do
    visit '/'
    click_link 'Add To Do list'
    fill_in 'Name', with: 'Today'
    click_button 'Create list'
  end

  it 'should allow the user to add a task to a to do list' do
    visit '/'
    click_link 'Add task'
    fill_in 'Task', with: 'Win'
    click_button 'Add task'
    expect(page).to have_content 'Win'
  end
end
