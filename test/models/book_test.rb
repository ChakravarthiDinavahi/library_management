require 'minitest_helper'

describe Book do

  let(:attrs) { attributes_for(:book) }
  let(:book) { Book.new(attrs) }

  describe 'validations' do

    it 'is valid with valid params' do
      assert_equal(book.valid?, true)
    end

    it 'is invalid without an title' do
      book.title = nil
      assert_equal(book.valid?, false)
    end

    it 'is invalid without an author' do
      book.author = nil
      assert_equal(book.valid?, false)
    end

    it 'is invalid without an ISBN' do
      book.isbn = nil
      assert_equal(book.valid?, false)
    end

    it 'is invalid without an publisher' do
      book.publisher = nil
      assert_equal(book.valid?, false)
    end

    it 'is invalid without copies' do
      book.copies = nil
      assert_equal(book.valid?, false)
    end

    it 'is invalid without cost' do
      book.cost = nil
      assert_equal(book.valid?, false)
    end

    it 'copies must be number' do
      book.copies = "one"
      assert_equal(book.valid?, false)
    end

  end
end
