feature 'Testing infrastucture' do
  scenario 'Can run app and display page' do
    visit('/')
    expect(page).to have_content 'submit'
  end

  scenario 'will store names given by the player' do
    visit('/')
    within("#name_form") do
      fill_in 'player_1_name', with: 'stella'
      fill_in 'player_2_name', with: 'troy'
    end
    click_button 'submit'
    expect(page).to have_content 'Player 1 name is stella Player 2 name is troy'
  end
end