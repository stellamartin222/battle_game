feature 'Enter Names' do
  scenario 'Displays form and has submit button' do
    visit('/')
    expect(page).to have_content 'submit'
  end

  scenario 'will store names given by the player' do
    sign_in_and_play
    expect(page).to have_content 'Player 1 name is stella Player 2 name is troy'
  end
end