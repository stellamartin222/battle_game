feature 'Show lose message when player reaches 0 HP' do
  scenario '' do
    sign_in_and_play
    19.times do
      attack_player_and_confirm
      click_button "Return to Arena"
    end
    expect(page).to have_content("troy died")
  end
end