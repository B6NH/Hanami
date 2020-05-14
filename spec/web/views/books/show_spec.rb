RSpec.describe Web::Views::Books::Show, type: :view do
  let(:book1)     { Book.new(title: 'Refactoring', author: 'Martin Fowler') }
  let(:exposures) { Hash[ book: book1 ] }
  let(:template)  { Hanami::View::Template.new('apps/web/templates/books/show.html.erb') }
  let(:view)      { described_class.new(template, exposures) }
  let(:rendered)  { view.render }

  it 'exposes #book' do
    expect(view.book).to eq exposures.fetch(:book)
  end

  it 'shows title and author' do
    expect(rendered).to include('Refactoring')
    expect(rendered).to include('Martin Fowler')
  end

end
