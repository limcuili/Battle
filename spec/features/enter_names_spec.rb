feature 'Player enters name' do

  scenario 'accepts player input and redirect path' do
    sign_in_and_play
    expect(page).to have_content 'Player 1 vs. Player 2'
  end

end
