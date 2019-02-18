# frozen_string_literal: true

RSpec.describe WordWrapTing do
  it 'has a version number' do
    expect(WordWrapTing::VERSION).not_to be nil
  end

  it 'returns an empty string when called with nothing' do
    expect(WordWrapTing.wrap('', 1)).to eq('')
  end

  it 'returns the word if equal to the max length' do
    expect(WordWrapTing.wrap('word', 4)).to eq('word')
  end

  it 'returns the word if shorter than the max length' do
    expect(WordWrapTing.wrap('word', 5)).to eq('word')
  end

  it 'breaks up a long word with a newline' do
    expect(WordWrapTing.wrap('longword', 4)).to eq("long\nword")
  end

  it 'breaks up a very long word with two newlines' do
    expect(WordWrapTing.wrap('verylongword', 4)).to eq("very\nlong\nword")
  end

  it 'wraps before word boundary' do
    expect(WordWrapTing.wrap('long word', 4)).to eq("long\nword")
  end

  it 'wraps on word boundary' do
    expect(WordWrapTing.wrap('long word', 5)).to eq("long\nword")
  end

  it 'wraps after word boundary' do
    expect(WordWrapTing.wrap('long word', 6)).to eq("long\nword")
  end

  it 'keeps as many words as possible on the line' do
    expect(WordWrapTing.wrap('very long word', 10)).to eq("very long\nword")
  end
end
