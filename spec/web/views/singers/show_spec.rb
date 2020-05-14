RSpec.describe Web::Views::Singers::Show, type: :view do

  let(:singer1)   { Singer.new(name: 'Sanah') }

  let(:song1) { Song.new(title: 'Szampan') }
  let(:song2) { Song.new(title: 'Melodia') }

  let(:exposures) { Hash[ singer: singer1, songs: [ song1, song2 ] ] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/singers/show.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }



  it 'exposes #singer' do
    expect(view.singer).to eq exposures.fetch(:singer)
  end

  it 'shows singer' do
    expect(rendered).to include('Sanah')
  end

  it 'shows songs' do
    expect(rendered).to include('Szampan')
    expect(rendered).to include('Melodia')
  end
end
