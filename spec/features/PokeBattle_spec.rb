describe 'Entering Player Names', type: :feature do
  it {
    visit '/'
    fill_in 'player1', with: 'Sonny'
    fill_in 'player2', with: 'Person'
    click_button 'player-name-submit'
    expect(page).to have_content 'Sonny'
    expect(page).to have_content 'Person'
  }
end

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    visit '/'
    fill_in 'player1', with: 'Sonny'
    fill_in 'player2', with: 'Person'
    click_button 'player-name-submit'
    expect(page).to have_content 'Person: 60HP'
  end
end

