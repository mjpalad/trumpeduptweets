AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

VocabularyList.create!(name: 'GOOD_PEOPLE_QUALIFIERS', usage: 'Used to add qualifiers to people with positive or undetermined sentiment.')
VocabularyList.create!(name: 'BAD_PEOPLE_QUALIFIERS', usage: 'Used to add qualifiers to people with negative or undetermined sentiment.')
