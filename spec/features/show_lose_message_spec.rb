feature 'Show lose message when player reaches 0 HP' do
  scenario '' do
    allow_any_instance_of(Move).to receive(:rand).with(0..2).and_return(1)
    sign_in_and_play
    19.times do
      click_button "Attack player"
      click_button "Return to Arena"
    end
    expect(page).to have_content("troy died")
  end
end