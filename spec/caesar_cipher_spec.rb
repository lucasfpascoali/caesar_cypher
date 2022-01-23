# frozen_string_literal: true

# spec/caesar_cypher_spec.rb
require './lib/caesar_cipher'

# rubocop:disable Metrics/BlockLength
describe CaesarCipher do
  let(:caesar_cypher) { CaesarCipher.new }

  describe '#encrypt' do
    it 'returns the correct encryption with a more than 0 and less than 26 factor' do
      expect(caesar_cypher.encrypt('lucas', 5)).to eql('qzhfx')
    end

    it 'returns the correct encryption with a more than 26 factor' do
      expect(caesar_cypher.encrypt('lucas', 27)).to eql('mvdbt')
    end

    it 'returns the same string when the factor is 26' do
      expect(caesar_cypher.encrypt('lucas', 26)).to eql('lucas')
    end

    it 'returns the same string when the factor is 0' do
      expect(caesar_cypher.encrypt('lucas', 0)).to eql('lucas')
    end

    it 'returns the correct encryption when the factor is less than 0' do
      expect(caesar_cypher.encrypt('lucas', -1)).to eql('ktbzr')
    end

    it 'encryption with -1 is equal to encryption with 25' do
      expect(caesar_cypher.encrypt('lucas', -1)).to eql(caesar_cypher.encrypt('lucas', 25))
    end
  end
end
# rubocop:enable Metrics/BlockLength
