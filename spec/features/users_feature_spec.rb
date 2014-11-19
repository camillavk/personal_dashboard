require 'rails_helper'
require_relative 'helpers/application'

include ApplicationHelper

context 'user not signed in and on the homepage' do
  it 'should see a sign up and sign in link' do
    visit '/'
    expect(page).to have_link 'Sign in'
    expect(page).to have_link 'Sign up'
  end
end

context 'user signed in and on the homepage' do
  it 'should see a sign out link' do
    visit '/'
    sign_up
    expect(page).to have_content 'Welcome'
    expect(page).to have_link 'Sign out'
    # expect(page).not_to have_link 'Sign in', exact: true
  end

end
