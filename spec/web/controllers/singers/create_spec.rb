RSpec.describe Web::Controllers::Singers::Create, type: :action do
  let(:action) { described_class.new }
  let(:repository) { SingerRepository.new }
  let(:params) { Hash[singer:{ name:'Katie Melua' }] }

  it 'is successful' do
    response = action.call(params)

    singer = repository.last

    expect(singer.id).to_not be_nil
    expect(singer.name).to eq(params.dig(:singer, :name))

    expect(response[0]).to eq 302
  end
end
