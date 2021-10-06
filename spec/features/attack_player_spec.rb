feature "attack player" do
    scenario 'attack player 2 and recieve a message' do
        sign_in_and_play
        attack_player_and_confirm
        expect(page).to have_content 'stella attacked troy'
    end
end
