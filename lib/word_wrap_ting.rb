# frozen_string_literal: true

require 'word_wrap_ting/version'

module WordWrapTing
  class Error < StandardError; end

  def self.wrap(str, max_len)
    return str if str.length <= max_len

    break_col = str[0...max_len].rindex(' ') || max_len
    str[0...break_col].strip << "\n" << self.wrap(str[break_col..-1].strip, max_len)
  end
end
