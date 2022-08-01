require 'minitest_helper'

describe Book do

  let(:attrs) { attributes_for(:book) }
  let(:book) { Book.new(attrs) }

  describe 'validations' do

    it 'is valid with valid params' do
      assert book.valid?
    end

    it 'is invalid without an title' do
      book.title = nil
      # TODO: Test invalid senario
    end

    it 'is invalid without an author' do

    end

    it 'is invalid without an ISBN' do
    end

    it 'is invalid without an publisher' do
    end

    it 'is invalid without copies' do
    end

    it 'is invalid without cost' do
    end
  end
end
