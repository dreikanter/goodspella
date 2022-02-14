require 'rails_helper'

RSpec.describe SuggestionsController, type: :controller do
  describe 'POST create' do
    before { post(:create, params: payload.merge(format: :json)) }

    context 'with blank text' do
      let(:payload) { { text: '' } }

      let(:expected) do
        { suggestions: [] }.to_json
      end

      it do
        expect(response).to be_successful
        expect(response.body).to eq(expected)
      end
    end

    context 'with some text' do
      let(:payload) { { text: 'hllo wrld' } }

      let(:expected) do
        {
          'suggestions' => [
            {
              'word' => 'hllo',
              'offset' => 0,
              'suggestions' => [
                'hello',
                'halo',
                'hl lo',
                'hl-lo'
              ]
            },
            {
              'word' => 'wrld',
              'offset' => 5,
              'suggestions' => [
                'weld',
                'world',
                'wild',
                'wold'
              ]
            }
          ]
        }.to_json
      end

      it do
        expect(response).to be_successful
        expect(response.body).to eq(expected)
      end
    end
  end
end
