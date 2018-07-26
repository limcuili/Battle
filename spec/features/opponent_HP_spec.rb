feature 'See Player 2 Hit Points (HP)' do

  scenario 'page displays Player 2 HP' do
    sign_in_and_play
    expect(page).to have_content 'Player 2: 100HP'
  end

end
