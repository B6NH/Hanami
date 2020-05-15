RSpec.describe Web::Controllers::Songs::Create, type: :action do
  let(:action) { described_class.new }
  let(:repository) { SingerRepository.new }
  let(:song_repository) { SongRepository.new }
  let(:singer_params) { Hash[singer:{ name:'Katie Melua' }] }
  let(:params) { Hash[song:{ singer_id: 1, title: 'Moonshine' }] }

  it 'is successful' do
    singer = repository.create(singer_params[:singer])
    response = action.call(params)

    song = song_repository.last

    expect(song.id).to_not be_nil
    expect(song.title).to eq(params.dig(:song, :title))

    expect(response[0]).to eq 302
  end
end
