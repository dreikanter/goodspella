class SuggestionsController < ApplicationController
  skip_forgery_protection

  def create
    render json: { suggestions: suggestions.as_json }
  end

  private

  def suggestions
    SpellChecker.new(text).suggestions
  end

  def text
    params.fetch(:text)
  end
end
