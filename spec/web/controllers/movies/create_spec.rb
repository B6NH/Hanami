RSpec.describe Web::Controllers::Movies::Create, type: :action do
  let(:action) { described_class.new }


  context 'correct params' do
    let(:params) { Hash[movie: { title: 'Sailor Moon', year: 2000 }] }

    it 'is successful' do
      response = action.call(params)
      expect(response[0]).to eq(302)
    end
  end


  context 'wrong params' do
    let(:params) { Hash[] }

    it 'is wrong' do
      response = action.call(params)
      expect(response[0]).to eq(422)
    end
  end

end
