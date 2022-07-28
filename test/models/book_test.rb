require "minitest_helper"

# require_relative '/Users/cdinahi/chakri/rails/library_management/app/models/application_record'
#
# require_relative '/Users/cdinahi/chakri/rails/library_management/app/models/book'

describe Book do
  subject = Book.new
  # subject { Book.new}

  # context 'validations' do
    it 'It must have a id' do
      assert_includes(subject.attributes, "id")
    end

    it 'It must have a title' do

    end

    it 'It must have a author' do

    end

    it 'It must have ISBN' do

    end

    it 'It must have a publisher' do

    end

    it 'It must have a copies' do

    end

    it 'It must have a cost' do

    end
  # end
end
