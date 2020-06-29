def sign_in_and_play
  visit '/'
  fill_in 'player1', with: 'Sonny'
  fill_in 'player2', with: 'Person'
  click_button 'player-name-submit'
end