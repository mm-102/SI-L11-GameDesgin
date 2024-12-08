(defrule check-love-money
    =>
    (assert (question 
    (display "Do you love Money?") 
    (answer1 "Yes" love_money) 
    (answer2 "No" no_love_money)
    ))
)

(defrule check-exceptional-talent
    (answer no_love_money)
    =>
    (assert (question 
    (display "Do you have exceptional talent?") 
    (answer1 "Yes" exceptional_talent) 
    (answer2 "No" no_exceptional_talent)
    ))
)

(defrule check-bitter-about-it
    (answer no_exceptional_talent)
    =>
    (assert (question 
    (display "Are you bitter about it?") 
    (answer1 "Yes" bitter_about_it) 
    (answer2 "No" no_bitter_about_it)
    ))
)

(defrule decision-game-critic
    (answer bitter_about_it)
    =>
    (assert (decision "Game Critic"))
)

(defrule check-excited-other-people-ideas
    (answer exceptional_talent)
    =>
    (assert (question 
    (display "Can you get excited for other peoples' ideas?") 
    (answer1 "Yes" excited_other_ideas) 
    (answer2 "No" no_excited_other_ideas)
    (answer3 "Nah, but I can fake it" fake_excited_other_ideas)
    ))
)

(defrule decision-marketer
    (answer fake_excited_other_ideas)
    =>
    (assert (decision "Marketer"))
)

(defrule check-games-are-important
    (or
        (answer no_excited_other_ideas)
        (answer no_really_excited_other_ideas)
    )
    =>
    (assert (question 
    (display "Do you think games are important?") 
    (answer1 "Yes" games_important) 
    (answer2 "No" no_games_important)
    ))
)

(defrule decision-social-games-studio-employee
    (answer no_games_important)
    =>
    (assert (decision "Social Games Studio Employee"))
)

(defrule check-make-games-on-your-own
    (answer games_important)
    =>
    (assert (question 
    (display "Can you make games on your own?") 
    (answer1 "Yes" games_on_your_own) 
    (answer2 "No" no_games_on_your_own)
    ))
)

(defrule check-know-basic-grammar
    (answer no_games_on_your_own)
    =>
    (assert (question 
    (display "Do you know basic grammar?") 
    (answer1 "Yes" basic_grammar) 
    (answer2 "No" no_basic_grammar)
    ))
)

(defrule check-good-at-playing-games
    (answer no_basic_grammar)
    =>
    (assert (question 
    (display "Are you at least good at playing games?") 
    (answer1 "Yes" good_at_playing) 
    (answer2 "No" no_good_at_playing)
    ))
)

(defrule decision-gamer-not-good-at-playing
    (answer no_good_at_playing)
    =>
    (assert (decision "Gamer"))
)

(defrule check-from-china-korea
    (answer good_at_playing)
    =>
    (assert (question 
    (display "Are you from Asia?") 
    (answer1 "Yes, Korea" from_korea)
    (answer2 "Yes, China" from_china)
    (answer3 "No" no_from_asia)
    ))
)

(defrule decision-gamer-not-from-asia
    (answer no_from_asia)
    =>
    (assert (decision "Gamer"))
)

(defrule decision-starcraft-cyberathlete
    (answer from_korea)
    =>
    (assert (decision "Starcraft Cyberathlete"))
)

(defrule decision-gold-farmer
    (answer from_china)
    =>
    (assert (decision "Gold Farmer"))
)

(defrule decision-blogger
    (answer basic_grammar)
    =>
    (assert (decision "Blogger"))
)

(defrule decision-indie-developer
    (answer games_on_your_own)
    =>
    (assert (decision "Indie Developer"))
)

(defrule check-really-excited
    (answer excited_other_ideas)
    =>
    (assert (question 
    (display "Really?") 
    (answer1 "Yes" really_excited_other_ideas) 
    (answer2 "No" no_really_excited_other_ideas)
    ))
)

(defrule check-mind-being-underappriciated
    (answer really_excited_other_ideas)
    =>
    (assert (question 
    (display "Do you mind being underappreciated?") 
    (answer1 "Yes" mind_being_underappreciated) 
    (answer2 "No" no_mind_being_underappreciated)
    ))
)

(defrule check-like-being-alone
    (answer no_mind_being_underappreciated)
    =>
    (assert (question 
    (display "Do you like to be alone?") 
    (answer1 "Yes" like_being_alone) 
    (answer2 "No" no_like_being_alone)
    ))
)

(defrule check-rather-be-in-the-movies
    (answer no_like_being_alone)
    =>
    (assert (question 
    (display "Would you rather be in the movies?") 
    (answer1 "Yes" rather_be_in_the_movies) 
    (answer2 "No" no_rather_be_in_the_movies)
    ))
)

(defrule check-mind-errors-in-graph
    (answer no_rather_be_in_the_movies)
    =>
    (assert (question 
    (display "Did you mind errors in this graph?") 
    (answer1 "Yes" mind_errors) 
    (answer2 "No" no_mind_errors)
    ))
)

(defrule check-choose-who-to-hang-out-with
    (answer no_mind_errors)
    =>
    (assert (question 
    (display "Do you want to choose who to hang out with?") 
    (answer1 "Yes" choose_hang_out) 
    (answer2 "No" no_choose_hang_out)
    ))
)

(defrule decision-commuinty-manager
    (answer no_choose_hang_out)
    =>
    (assert (decision "Community Manager"))
)

(defrule decision-guild-leader
    (answer choose_hang_out)
    =>
    (assert (decision "Guild Leader"))
)

(defrule decision-quality-assurance
    (answer mind_errors)
    =>
    (assert (decision "Quality Assurance"))
)

(defrule check-movie-or-tv-celebrity
    (answer rather_be_in_the_movies)
    =>
    (assert (question 
    (display "You a TV or movie celebrity?") 
    (answer1 "Yes" celebrity) 
    (answer2 "No" no_celebrity)
    ))
)

(defrule check-young-and-hot
    (answer no_celebrity)
    =>
    (assert (question 
    (display "Are you young caucasian and hot?") 
    (answer1 "Yes" young_and_hot) 
    (answer2 "No" no_young_and_hot)
    ))
)

(defrule decision-motion-capture-actor
    (answer no_young_and_hot)
    =>
    (assert (decision "Motion Capture Actor"))
)

(defrule check-male
    (answer young_and_hot)
    =>
    (assert (question 
    (display "Are you male?") 
    (answer1 "Yes" male) 
    (answer2 "No" no_male)
    ))
)

(defrule check-like-arts-and-crafts
    (answer no_male)
    =>
    (assert (question 
    (display "Do you like arts and crafts?") 
    (answer1 "Yes" like_arts_and_crafts) 
    (answer2 "No" no_like_arts_and_crafts)
    ))
)

(defrule decision-booth-babe
    (answer no_like_arts_and_crafts)
    =>
    (assert (decision "Booth Babe"))
)

(defrule decision-cosplayer
    (answer like_arts_and_crafts)
    =>
    (assert (decision "Cosplayer"))
)

(defrule decision-military
    (answer male)
    =>
    (assert (decision "Military Shooter Packaging Model"))
)

(defrule decision-voice-actor
    (answer celebrity)
    =>
    (assert (decision "Voice Actor"))
)

(defrule check-musical
    (answer like_being_alone)
    =>
    (assert (question 
    (display "Are you musical?") 
    (answer1 "Yes" musical) 
    (answer2 "No" no_musical)
    ))
)

(defrule decision-office-IT
    (answer no_musical)
    =>
    (assert (decision "Office IT"))
)

(defrule check-like-shoot-blow-things-up
    (answer musical)
    =>
    (assert (question 
    (display "Do you like to shoot or blow things up?") 
    (answer1 "Yes" like_shooting) 
    (answer2 "No" no_like_shooting)
    ))
)

(defrule decision-composer
    (answer no_like_shooting)
    =>
    (assert (decision "Composer"))
)

(defrule decision-sound-designer
    (answer like_shooting)
    =>
    (assert (decision "Sound Designer"))
)

(defrule check-visually-oriented
    (answer mind_being_underappreciated)
    =>
    (assert (question 
    (display "Are you visually oriented?") 
    (answer1 "Yes" visually_oriented) 
    (answer2 "No" no_visually_oriented)
    ))
)

(defrule check-like-work-with-unfinished-tools
    (answer no_visually_oriented)
    =>
    (assert (question 
    (display "Do you like to work with unfinished tools?") 
    (answer1 "Yes" like_unfinished_tools) 
    (answer2 "No" no_like_unfinished_tools)
    ))
)

(defrule check-speak-spreadsheet
    (answer no_like_unfinished_tools)
    =>
    (assert (question 
    (display "Do you speak Spreadsheet?") 
    (answer1 "Yes" speak_spreadsheet) 
    (answer2 "No" no_speak_spreadsheet)
    ))
)

(defrule decision-writer
    (answer no_speak_spreadsheet)
    =>
    (assert (decision "Writer"))
)

(defrule check-want-to-be-told-what-to-do
    (answer speak_spreadsheet)
    =>
    (assert (question 
    (display "Do you want to be told what to do?") 
    (answer1 "Yes" want_be_told_what_to_do) 
    (answer2 "No" no_want_be_told_what_to_do)
    ))
)

(defrule decision-lead-game-desginer
    (answer no_want_be_told_what_to_do)
    =>
    (assert (decision "Lead Game Desginer"))
)

(defrule check-obsess-over-details
    (answer want_be_told_what_to_do)
    =>
    (assert (question 
    (display "Do you obsess excessively over even the tiniest details?") 
    (answer1 "Yes" obsess_over_details) 
    (answer2 "No" no_obsess_over_details)
    ))
)

(defrule decision-event-scripter
    (answer no_obsess_over_details)
    =>
    (assert (decision "Event Scripter"))
)

(defrule check-fixation-on-gore-and-blood
    (answer obsess_over_details)
    =>
    (assert (question 
    (display "Do you have a fixation on gore and blood?") 
    (answer1 "Yes" fixation_gore_blood) 
    (answer2 "No" no_fixation_gore_blood)
    ))
)

(defrule decision-game-designer
    (answer no_fixation_gore_blood)
    =>
    (assert (decision "Game Designer"))
)

(defrule decision-combat-designer
    (answer fixation_gore_blood)
    =>
    (assert (decision "Combat Designer"))
)

(defrule decision-level-designer
    (answer like_unfinished_tools)
    =>
    (assert (decision "Level Designer"))
)

(defrule check-prefer-working-over-talking
    (answer visually_oriented)
    =>
    (assert (question 
    (display "Do you prefer working over talking?") 
    (answer1 "Yes" prefer_working) 
    (answer2 "No" no_prefer_working)
    ))
)

(defrule decision-art-director
    (answer no_prefer_working)
    =>
    (assert (decision "Art Director"))
)

(defrule check-prefer-be-proper-artist
    (answer prefer_working)
    =>
    (assert (question 
    (display "Would you rather be a \"proper\" artist?") 
    (answer1 "Yes" proper_artist) 
    (answer2 "No" no_proper_artist)
    ))
)

(defrule check-spend-two-weeks-on-two-seconds
    (answer no_proper_artist)
    =>
    (assert (question
    (display "Want to spend two weeks on two seconds?") 
    (answer1 "Yes" spend_two_weeks) 
    (answer2 "No" no_spend_two_weeks)
    ))
)

(defrule decision-3d-artist
    (answer no_spend_two_weeks)
    =>
    (assert (decision "3d Artist"))
)

(defrule decision-3d-artist
    (answer spend_two_weeks)
    =>
    (assert (decision "Animator"))
)

(defrule check-french
    (answer proper_artist)
    =>
    (assert (question
    (display "Are you French?") 
    (answer1 "Yes" french) 
    (answer2 "No" no_french)
    ))
)

(defrule check-asian
    (answer no_french)
    =>
    (assert (question
    (display "Asian?") 
    (answer1 "Yes" asian) 
    (answer2 "No" no_asian)
    ))
)

(defrule check-enjoy-crafting-crates
    (answer no_french)
    =>
    (assert (question
    (display "Asian?") 
    (answer1 "Yes" enjoy_crafting_crates) 
    (answer2 "No" no_enjoy_crafting_crates)
    ))
)

(defrule decision-2d-artist
    (answer no_enjoy_crafting_crates)
    =>
    (assert (decision "2d Artist"))
)

(defrule decision-environmental-artist
    (answer enjoy_crafting_crates)
    =>
    (assert (decision "Environmental Artist"))
)

(defrule decision-comic-artist
    (answer french)
    =>
    (assert (decision "Comic Artist"))
)