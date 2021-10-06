
feature 'Switch Turns' do
  scenario "After an attack is carried out, it switches to player 2's turn" do
    sign_in_and_play
    expect(page).to have_content "stella's turn"
    attack_player_and_confirm
    click_button 'Return to Arena'
    expect(page).to have_content "troy's turn"
  end
end