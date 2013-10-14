pcs_code_challenge_01
=====================

Growing Madlibs Code Challenge

Increment 5
** New features outlined in 1b and 3.


1. Uses a class to:

	a. Gather the following parts of speech from the user (each can be a word or phrase):
		Noun
		Adjective
		Verb
		Adverb
		Object

	b. (New Feature) Gather a prepositional phrase via a multiple choice prompt. (If an improper number is detected, the user gets a pre-determined prepositional phrase).

	b. Store all of these in a hash where the key is the name of the part of speech. For example, "noun," "verb," or "prep_phrase."

2. Stores the hash values outside the class

3. Creates an array with four sentence templates. New: one more template added in this increment, which includes the new prepositional phrase, and one of the older templates now includes this prepositional phrase.

4. Uses another class to insert the hash values into the sentence templates

5. Prints the completed sentences and exits
