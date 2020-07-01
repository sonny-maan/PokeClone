def sign_in_and_play
  visit '/'
  fill_in 'player_1_name', with: 'Sonny'
  fill_in 'player_2_name', with: 'Person'
  click_button 'player-name-submit'
end
