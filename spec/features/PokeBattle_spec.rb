describe 'Entering Player Names', type: :feature do
  it {
    sign_in_and_play
    expect(page).to have_content 'Sonny'
    expect(page).to have_content 'Person'
  }
end

feature 'View hit points' do
  scenario 'see Player 2 hit points' do
    sign_in_and_play
    expect(page).to have_content 'Person: 60HP'
  end
end

