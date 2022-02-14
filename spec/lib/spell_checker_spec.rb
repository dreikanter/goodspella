require 'rails_helper'

describe SpellChecker do
  subject(:suggestions) { described_class.new(text).suggestions }

  context 'with text in English' do
    let(:text) { 'magno, bonana, coconut' }

    let(:expected) do
      [
        {
          offset: 0,
          word: 'magno',
          suggestions: [
            'mango',
            'magnon',
            'mag no',
            'mag-no',
            'magnolia'
          ]
        },
        {
          offset: 7,
          word: 'bonana',
          suggestions: %w[bonanza banana bondman]
        }
      ]
    end

    it { expect(suggestions).to eq(expected) }
  end

  context 'with text in Russian' do
    let(:text) { 'магно, бонан, кокос' }

    let(:expected) do
      [
        {
          offset: 0,
          word: 'магно',
          suggestions: [
            'манго',
            'магн',
            'маг но',
            'маг-но',
            'магн о'
          ]
        },
        {
          offset: 7,
          word: 'бонан',
          suggestions: %w[бонна бона борона]
        }
      ]
    end

    it { expect(suggestions).to eq(expected) }
  end
end
