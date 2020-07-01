describe 'Entering Player Names', type: :feature do
  it {
    sign_in_and_play
    expect(page).to have_content 'Sonny'
    expect(page).to have_content 'Person'
  }
end

feature 'View hit points' do
  scenario 'see Player 1 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Sonny: 60HP'
  end
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Person: 60HP'
  end
end

feature 'Attacking' do
  scenario 'Player 1 attack Player 2' do
    sign_in_and_play
    click_link 'Attack'
    expect(page).to have_content 'Sonny attacked Person'
  end
end
