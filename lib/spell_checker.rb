class SpellChecker
  attr_reader :text

  def initialize(text)
    @text = text
  end

  def suggestions
    text.to_enum(:scan, /[[:word:]]+/).filter_map do
      word = Regexp.last_match
      next if dictionary.check?(word)

      {
        word: word.to_s,
        offset: word.offset(0).first,
        suggestions: dictionary.suggest(word)
      }
    end
  end

  private

  def dictionary
    FFI::Hunspell.dict('en_US').tap do |result|
      result.add_dic('/usr/share/hunspell/ru_RU.dic')
    end
  end
end
