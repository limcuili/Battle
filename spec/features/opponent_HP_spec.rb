feature 'See Player 2 Hit Points (HP)' do

  scenario 'page displays Player 2 HP' do
    visit ('/')
    fill_in :player_1_name, with: 'Player 1'
    fill_in :player_2_name, with: 'Player 2'
    click_button 'Submit'
    expect(page).to have_content 'Player 2: 100HP'
  end

end
