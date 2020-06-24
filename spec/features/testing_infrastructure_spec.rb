feature 'Entering Player Names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'Sonny'
    fill_in :player_2_name, with: 'Person'
    click_button 'Submit'
    expect(page).to have_content 'Sonny vs. Person'
  end
end