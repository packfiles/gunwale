# frozen_string_literal: true

module RowBoat
  # @api private
  module Helpers
    CSV_OPTION_KEYS = %i[
      auto_row_sep_chars
      chunk_size
      col_sep
      comment_regexp
      convert_values_to_numeric
      downcase_header
      duplicate_header_suffix
      file_encoding
      force_simple_split
      force_utf8
      headers_in_file
      invalid_byte_sequence
      keep_original_headers
      key_mapping
      missing_header_prefix
      quote_char
      remove_empty_hashes
      remove_empty_values
      remove_unmapped_keys
      remove_values_matching
      remove_zero_values
      required_headers
      required_keys
      row_sep
      silence_missing_keys
      skip_lines
      strict
      strings_as_keys
      strip_chars_from_headers
      strip_whitespace
      user_provided_headers
      value_converters
      verbose
      with_line_numbers
    ].freeze

    IMPORT_OPTION_KEYS = %i[
      batch_size
      ignore
      on_duplicate_key_ignore
      on_duplicate_key_update
      recursive
      synchronize
      timestamps
      validate
    ].freeze

    class << self
      def extract_csv_options(options)
        options.slice(*CSV_OPTION_KEYS)
      end

      def extract_import_options(options)
        options.slice(*IMPORT_OPTION_KEYS)
      end
    end
  end
end
