feature "attack player" do
    scenario 'attack player 2 and recieve a message' do
        sign_in_and_play
        attack_player_and_confirm
        expect(page).to have_content 'stella attacked troy'
        click_button 'Return to Arena'
        expect(page).to have_content 'stella HP = 100'
        expect(page).to have_content 'troy HP = 90'
        attack_player_and_confirm
        expect(page).to have_content 'troy attacked stella'
        click_button 'Return to Arena'
        expect(page).to have_content 'stella HP = 90'
        expect(page).to have_content 'troy HP = 90'
    end
end
