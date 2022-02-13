require 'rails_helper'

RSpec.describe SpellChecksController, type: :controller do
  describe 'GET index' do
    let(:expected) do
      {}.to_json
    end

    before { get(:index, params: { q: '' }) }

    it do
      expect(response).to be_successful
      expect(response.body).to eq(expected)
    end
  end
end
