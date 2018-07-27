feature 'See Player 2 Hit Points (HP)' do

  scenario 'page displays Player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 60HP'
  end

  scenario 'confirms that Player 2 has been attacked' do
      sign_in_and_play
      click_button('Attack')
      expect(page).to have_content 'Player 2 has been attacked'
  end

  scenario 'decreases Player 2 HP by 10' do
      sign_in_and_play
      click_button('Attack')
      click_button('OK')
      expect(page).not_to have_content 'Player 2: 60HP'
      expect(page).to have_content 'Player 2: 50HP'
  end

end
