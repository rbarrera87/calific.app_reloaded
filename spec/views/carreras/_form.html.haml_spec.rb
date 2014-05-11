
describe 'carreras/_form.html.erb' do
  context 'when the carrera has a url' do
    it 'displays the url' do
      assign(:carrera, build(:carrera, url: 'http://example.com')

      render

      expect(rendered).to have_link 'Carrera', href: 'http://example.com'
    end
  end

  context 'when the carrera url is nil' do
    it "displays 'None'" do
      assign(:carrera, build(:carrera, url: nil)

      render

      expect(rendered).to have_content 'None'
    end
  end
end