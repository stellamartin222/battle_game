def sign_in_and_play
    visit('/')
    within("#name_form") do
      fill_in 'player_1_name', with: 'stella'
      fill_in 'player_2_name', with: 'troy'
    end
    click_button 'submit'
end

def attack_player_and_confirm
  visit('/play')
  click_button "Attack player"
end
  