FactoryBot.define do
    factory :book do
      title { 'War of Lanka' }
      language { 'English' }
      publisher { 'HarperCollins India' }
      publication_date { '3 October 2022' }
      isbn { 9_356_291_527 }
      author { 'Amish Tripathi' }
      copies { 1 }
      cost { 407 }
    end
  end