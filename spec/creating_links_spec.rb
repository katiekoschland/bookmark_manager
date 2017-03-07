feature 'creating links' do
  scenario 'I can create a new link' do
    visit '/links/new'
    fill_in 'url',  with: 'http://facebook.com'
    fill_in 'title',with: 'Welcome toFacebook'
    click_button 'Create link'

    #we expect to be redirected back to the links page
    expect(current_path).to eq '/links'

    within 'ul#links' do
      expect(page).to have_content('This is Facebook')
    end
  end
end
