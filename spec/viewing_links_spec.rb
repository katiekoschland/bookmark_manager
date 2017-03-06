feature 'Viewing links' do
  scenario 'so that I can see existing links on the webpage' do
    Link.create(url: 'https://google.co.uk', title: 'Google')

    visit '/links'
    expect(page.status_code).to eq 200

    within 'ul#links' do
      expect(page).to have_content 'Google'
    end
  end
end
