AdminUser.create!(email: 'admin@example.com', password: 'password', password_confirmation: 'password')

GOOD_PEOPLE_QUALIFIERS = VocabularyList.create!(name: 'GOOD_PEOPLE_QUALIFIERS', usage: 'Used to add qualifiers to people with positive or undetermined sentiment.')

BAD_PEOPLE_QUALIFIERS = VocabularyList.create!(name: 'BAD_PEOPLE_QUALIFIERS', usage: 'Used to add qualifiers to people with negative or undetermined sentiment.')

VocabularyWord.create!(vocabulary_list_id: GOOD_PEOPLE_QUALIFIERS.id, word:"the fantastic")
VocabularyWord.create!(vocabulary_list_id: GOOD_PEOPLE_QUALIFIERS.id, word:"strong")
VocabularyWord.create!(vocabulary_list_id: GOOD_PEOPLE_QUALIFIERS.id, word:"funny")

VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"Lyin'")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"Crooked")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"crazy")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"weak")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"dumb")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"dummy")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"loser")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"terrible")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"stupid")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"dishonest")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"lightweight")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"incompetent")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"boring")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"fool")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"pathetic")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"moron")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"racist")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"clown")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"disgusting")
VocabularyWord.create!(vocabulary_list_id: BAD_PEOPLE_QUALIFIERS.id, word:"overrated")

Replacement.create!(name: "Media", words_to_find: ["media","news"], words_to_substitute: ["FAKE NEWS","LYING NEWS"])
