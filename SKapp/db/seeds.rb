# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Book.delete_all
Repeater.delete_all
Association.delete_all

book = Book.create([title: 'The Shining', published_date: Date.parse('17/10/1977'), synopsis: 'Taking place mainly in the fictional and haunted Overlook Hotel, the story centers around Jack Torrance along with his wife and son as they spend the winter isolated in the Colorado Rockies.'])

# repeater = Repeater.create([name: 'Overlook Hotel', category: 'Location', description: 'A haunted hotel, past its prime and shut down for the winter comes to life, haunting the winter caretakers and possessing the fathers of the families, causing them to attack their families.'])

# book[0].repeaters << repeater

book = Book.create([title: 'The Stand', published_date: Date.parse('1/9/1978'), synopsis: 'In a post-apocalyptic U.S. two leaders with supernatural powers appear and create differing societies, one good and one evil.'])

repeater_a = Repeater.create([name: 'Boulder, Colorado', category: 'location', description: 'A medium sized city sitting at the base of the Rocky Mountains, Boulder appears in a few of King\'s books.'])

# repeater_b = Repeater.create([name: 'Las Vegas, Nevada', category: 'Location', description: 'The gathering place and start of a new tyrannical society led by Randall Flagg.'])

repeater_c = Repeater.create([name: 'Randall Flagg', category: 'character', description: 'A supernatural and evil being, he is not quite human.  He takes many names and faces in his travels throughout the Stephen King universe.'])

repeater_e = Repeater.create([name: 'The Shop', category: 'character', description: 'Officially known as the U.S. Department of Scientific Intelligence, this top secret government agency pursues its goals with a disregard for morality or law.'])

repeater_r = Repeater.create([name: 'Topeka, Kansas', category: 'location', description: 'Appearing directly in only one novel, Topeka is on this list because of a relationship between the novels \'The Stand\' and \'The Dark Tower IV\'.'])

book[0].repeaters << repeater_a
# book[0].repeaters << repeater_b
book[0].repeaters << repeater_c
book[0].repeaters << repeater_e
book[0].repeaters << repeater_r

book[0].associations[0].update_attributes(plot: 'The gathering place and start of a new democratic society called the Free Zone, Boulder is home to the protagonists of the novel.  Led there by visions of Mother Abagail, the city is the foil for the other, less enlightened society in Las Vegas.')

book[0].associations[1].update_attributes(plot: "In his first appearance in the Stephen King universe, Flagg takes on the role of the leader of a new society after the fall of modern civilization.  Located in Las Vegas, Flagg rules with an iron fist, attracting followers drawn to violence and descruction.")

book[0].associations[2].update_attributes(plot: "In The Stand, The Shop was tasked with stopping the superflu viral outbreak before it kills most of humanity, which it completely fails in.")

book[0].associations[3].update_attributes(plot: 'Although not directly important to this novel, the version of Topeka ravaged by the superflu is visited in another.')

book = Book.create([title: 'The Dead Zone', published_date: Date.parse('1/8/1979'), synopsis: 'Upon waking from a five year coma, protagonist John Smith finds he has psychic abilities that lead to an apocalyptic vision of a politicians future.'])

repeater_d = Repeater.create([name: 'Castle Rock, Maine', category: 'location', description: 'Castle Rock is one of a trio of fictional Maine towns that are home to a number of King\'s works.'])

# repeater_f = Repeater.create([name: 'Pheonix, Arizona', category: 'Location', description: 'The setting of the climax of The Dead Zone.'])

book[0].repeaters << repeater_d
# book[0].repeaters << repeater_f

book[0].associations[0].update_attributes(plot: 'Castle Rock is the hometown of John Smith, psychic protagonist of the Dead Zone, and setting for much of the novel.')

book = Book.create([title: 'The Dark Tower: The Gunslinger', published_date: Date.parse('10/6/1982'), synopsis: 'As the opening novel in the seven book Dark Tower Series, we are introduced to the primary protagonist Roland Deschain, aka The Gunslinger.  We follow him as he crosses a seemingly endless desert in pursuit of the enigmatic Man in Black.'])

repeater_g = Repeater.create([name: 'Roland Deschain', category: 'character', description: 'The last of the Gunslingers, an ancient group of peace keeping knights from the line of Eld, Roland wields his twin revolvers with preternatural speed and precision, and is single minded in his pursuit of The Dark Tower.'])

repeater_h = Repeater.create([name: 'Jake Chambers', category: 'character', description: 'A young boy of ten or eleven, Jake grew up in Manhattan yet inexplicably finds himself in Mid-World, a companion to the Gunslinger.'])

repeater_i = Repeater.create([name: 'Mid-World', category: 'location', description: 'The fictional setting of most of the Dark Tower Series and home to protagonist Roland Deschain, Mid-World is seen to be an alternate version of Earth.  Having technology that was once more advanced than our own, \'the world has moved on\' resulting in a devolved society, where civilization can be found at all.  Mid-World is also a place where time and space are constantly in flux.'])

repeater_j = Repeater.create([name: 'New York City', category: 'location', description: 'New York is the origin of several of the characters and an often visited setting in the Dark Tower Series.'])

book[0].repeaters << repeater_c
book[0].repeaters << repeater_g
book[0].repeaters << repeater_h
book[0].repeaters << repeater_i
book[0].repeaters << repeater_j

book[0].associations[0].update_attributes(plot: 'Only seen and referred to as The Man in Black, or Walter, it is only much later that we learn these two are the same being.  In The Gunslinger, protagonist Roland pursues him throughout the novel, only catching up to and speaking to him in the very end.')

book[0].associations[1].update_attributes(plot: 'First introduced in this novel, we meet a single minded and dispassionate individual as he chases The Man in Black across the desert in his seemingly endless quest for The Dark Tower.')

book[0].associations[2].update_attributes(plot: 'Jake is a young boy, who after an unfortunate event in Manhattan, inexplicably finds himself in the path of the Gunslinger in his trip across the desert.  Becoming, for a time, the first of Roland\'s companions, Jake is both a distraction and a test in Walter\'s attempt to dissuade Roland from continuing his quest for The Dark Tower.')

book[0].associations[3].update_attributes(plot: 'The setting for the entire novel, our first visit to Mid-World is marked by sparse settings and few people where we learn for the first time what this alternate world is like.')

book[0].associations[4].update_attributes(plot: 'Only mentioned in the story of the origin of Jake Chambers, New York plays a very small role in this novel.')

book = Book.create([title: 'Christine', published_date: Date.parse('29/4/1983'), synopsis: 'A red and white 1958 Plymouth Fury possessed by the antagonistic spirit of an old man is purchased by a troubled teenager.  The two become involved in a co-dependent and murderous relationship as Christine affects everyone around it.'])

book = Book.create([title: 'The Talisman', published_date: Date.parse('8/11/1984'), co_author: 'Peter Straub', synopsis: 'A young boy of 12 sets out on a quest to save his mother by making a cross-country trip from New Hampshire to California.  Along the way he is introduced to \'flipping\', or moving to an alternate dimension known as the Territories where almost everyone and everything is represented in a similar yet altered fashion.'])

book[0].repeaters << repeater_i

book[0].associations[0].update_attributes(plot: 'Mentioned only as \'the Territories\', it is only in the sequel \'Black House\' that this alternate universe and Mid-World are revealed to be one in the same.  In this novel \'the Territories\' is a smaller and less technologically advanced version of the United States that the hero travels to and from in his attempt to save his mother.')

book = Book.create([title: 'It', published_date: Date.parse('15/9/1986'), synopsis: 'Told through alternating time periods set approximately 30 years apart, \'It\' tells the story of a group of friends who must discover the truth and then ultimately destroy a demonic shape-shifting entity who murders and devours mostly children in a small town in Maine.'])

repeater_k = Repeater.create([name: 'Derry, Maine', category: 'location', description: 'A small, fictional town in Maine, Derry is the setting of several of King\'s novels.'])

book[0].repeaters << repeater_k

book[0].associations[0].update_attributes(plot: 'In the novel \'It\', Derry is the home and hunting ground of the titular demonic entity. Derry is also home to the group of seven childhood friends who must confront him as children, and then must return 27 years later to ultimately kill \'it\'.')

book = Book.create([title: 'The Dark Tower II: The Drawing of the Three', published_date: Date.parse('1/5/1987'), synopsis: 'After finally catching the Man in Black and meeting with him over a single seemingly endless night, the Gunslinger continues his journey as he visits New York gathering new companions to join him on his quest.'])

repeater_l = Repeater.create([name: 'Eddie Dean', category: 'character', description: 'Beginning as a heroin junkie from Brooklyn in the 80\'s, Eddie Dean becomes a resident of Mid-World and a member of Roland Deschain\'s Ka-tet, where he learns the ways of a gunslinger and joins in the quest for the Dark Tower.'])

repeater_m = Repeater.create([name: 'Susannah Dean', category: 'character', description: 'Having lost her legs just above the knee in a subway accident, Susannah suffered from dissociative identity disorder until Roland is able to make her two personalities confront one another and merge into one.  After she is trained as a gunslinger and joins in his quest for the Dark Tower.'])

book[0].repeaters << repeater_g
book[0].repeaters << repeater_i
book[0].repeaters << repeater_j
book[0].repeaters << repeater_l
book[0].repeaters << repeater_m

book[0].associations[0].update_attributes(plot: 'In the second volume of the series, Roland continues his journey for the Dark Tower as he travels along the coast and comes upon three doors as foretold during his meeting with the Man in Black.  Behind each door he encounters a different time period of modern New York City where he must find and help some new companions as well as himself.')

book[0].associations[1].update_attributes(plot: 'In this novel the setting is split between the western coast of Mid-World and New York.  The only thing we see of Mid-World is a long trek down the coast as Roland searches for three doors sitting in mid-air.')

book[0].associations[2].update_attributes(plot: 'The setting for at least half the novel, New York City is the home of three new characters Roland must interact with, each behind a different door acting as a portal from Mid-World.')

book[0].associations[3].update_attributes(plot: 'In his first appearance in the series, Eddie is a broken down junkie in serious trouble with a group of criminals.  Roland must help Eddie through his problems and draw him into Mid-World where his life changes forever.')

book[0].associations[4].update_attributes(plot: 'In her first appearance in the series, Susannah is two different people, Detta and O\'detta.  Roland must force the two personalities to confront each other and merge to become Susannah, at which point she joins him in his quest.')

book = Book.create([title: 'Misery', published_date: Date.parse('8/6/1987'), synopsis: 'A writer is rescued from a horrible car accident by a one-time nurse who is also his biggest fan.  Unfortunately she is mentally disturbed and is intent on keeping him prisoner until he brings her favorite character back to life.'])

book[0].repeaters << repeater_a

book[0].associations[0].update_attributes(plot: 'Boulder is the setting for the very beginning of the novel where protagonist Paul Sheldon has just finished his latest novel.  It is also referenced later as the home of the hospital where antagonist Annie Wilkes previously worked.')

book = Book.create([title: 'The Tommyknockers', published_date: Date.parse('10/11/1987'), synopsis: 'When an alien spacecraft is unearthed in the woods near a small town, the residents slowly begin to change for the worse as the ship exerts its influence on them.'])

repeater_n = Repeater.create([name: 'Haven, Maine', category: 'location', description: 'A small fictional town in Maine, Haven is the setting for several of King\'s works.'])

book[0].repeaters << repeater_e
book[0].repeaters << repeater_n

book[0].associations[0].update_attributes(plot: 'Making only a small appearance at the end of the novel, The Shop is one of the government agencies who arrive in Haven after the alien craft is launched back into outer space.  Once there they contain or kill the altered Havenites as well as collect the strange and advanced inventions they have created.')

book[0].associations[1].update_attributes(plot: 'Haven is the setting for this novel.  The spacecraft is found in the woods outside of town and begins to affect the residents.')

book = Book.create([title: 'The Dark Half', published_date: Date.parse('20/10/1989'), synopsis: 'A small town writer puts an end to his pen name, under which he has achieved much success.  However the alter ego arises from the mock grave and goes on a killing spree, throwing the writer\'s life into disarray.'])

repeater_o = Repeater.create([name: 'Sheriff Alan Pangborn', category: 'character', description: 'Alan Pangborn is the sheriff of Castle Rock, a small fictional town in Maine.'])

book[0].repeaters << repeater_d
book[0].repeaters << repeater_o

book[0].associations[0].update_attributes(plot: 'Castle Rock appears in The Dark Half as a neighboring town to the protagonists home, and is home itself to the sheriff who investigates the murders surrounding the main character.')

book[0].associations[1].update_attributes(plot: 'In The Dark Half, Sheriff Pangborn investigates the murders committed by the protagonist\'s alter-ego, believing the writer himself must be guilty.')

book = Book.create([title: 'The Dark Tower III: The Waste Lands', published_date: Date.parse('1/8/1991'), synopsis: 'In the third volume of The Dark Tower series, now companions Roland, Eddie and Susannah begin their journey in earnest.  Following the path of \'the beam\', Roland is reunited with the boy he betrayed, and the ka-tet must brave the violent city of Lud, and risk a ride aboard the insane artificial intelligence known as Blaine the Mono.'])

book[0].repeaters << repeater_g
book[0].repeaters << repeater_h
book[0].repeaters << repeater_l
book[0].repeaters << repeater_m
book[0].repeaters << repeater_c
book[0].repeaters << repeater_i
book[0].repeaters << repeater_j

book[0].associations[0].update_attributes(plot: 'As he and his new companions begin the long journey to The Dark Tower, Roland begins to train Eddie and Susannah to become gunslingers.  We also learn he is slowly losing his mind, an unfortunate side effect of his travels to New York.')

book[0].associations[1].update_attributes(plot: 'After Roland alters history in a way that prevents Jake Chambers from dieing, we find the young boy slowly losing his mind with two sets of memories competing in his mind for the real truth.  With his connection to Roland and Ka driving him, Jake is able to pass through into Mid-World once again and truly becomes part of his group of gunslingers.')

book[0].associations[2].update_attributes(plot: 'In the third book we find Eddie fully recovered from heroin withdrawal.  He has fallen in love and married Susannah and is becoming a powerful gunslinger in his own right.')

book[0].associations[3].update_attributes(plot: 'In this volume we find Susannah a complete mind, a combination of her other two personalities.  She has fallen in love and married Eddie and is becoming a powerful gunslinger in her own right.')

book[0].associations[4].update_attributes(plot: 'Mid-World is greatly expanded in this third volume of the series as we learn about the guardians and the beam.  The latter marks the path that must be followed to find The Dark Tower, eventually leading to the great city of Lud that has descended into chaos.')

book[0].associations[5].update_attributes(plot: 'New York is once again shown as the home of Jake and the other end of a portal he must cross through to regain his sanity.')

book = Book.create([title: 'Needful Things', published_date: Date.parse('1/10/1991'), synopsis: 'A mysterious stranger opens a trinket shop in a small town in Maine where he somehow has the exact item that every customer has always wanted.  However instead of money, the price is always a seemingly harmless prank that in reality increases tensions between the residents, slowly building until the entire town erupts in violence.'])

book[0].repeaters << repeater_d
book[0].repeaters << repeater_o

book[0].associations[0].update_attributes(plot: 'Castle Rock acts as the setting for this novel about the Devil, temptation, and violence.')

book[0].associations[1].update_attributes(plot: 'In Needful Things, Alan Pangborn is moved into the role of the main protagonist.  As Castle Rock begins to fall apart, Alan must try to keep the peace and eventually confront and stop the owner of the new shop in town before all hell breaks loose.')

book = Book.create([title: 'Gerald\'s Game', published_date: Date.parse('1/5/1992'), synopsis: 'A wife is left trapped, handcuffed in a secluded cabin after her husband dies of a heart attack shortly after securing her to the bed.  As the days pass her situation becomes more and more desperate, especially after she starts receiving visits from a terrifying apparition she is not even sure is real.'])

repeater_p = Repeater.create([name: 'Solar Eclipse of 1963', category: 'location', description: 'This event appears in two successive King novels which, with the small exception of the eclipse a telepathic vision, share no connection.'])

book[0].repeaters << repeater_p

book[0].associations[0].update_attributes(plot: 'In \'Geradld\'s Game\' this eclipse is the backdrop of a repressed memory of the main character who realizes she was molested by her father during it thirty years prior.')

book = Book.create([title: 'Dolores Claiborne', published_date: Date.parse('1/11/1992'), synopsis: 'After an elderly woman dies her housekeeper/caretaker is accused of killing her.  During an interview with the police, the titular character informs them that although she did not kill her employer, she does confess to orchestrating the death of her husband during a solar eclipse 30 years earlier.'])

book[0].repeaters << repeater_p

book[0].associations[0].update_attributes(plot: 'In \'Dolores Claiborne\' the eclipse is the setting for the death of Dolores\' husband thirty years earlier.  Having learned that he had molested their daughter, she formulates a plan and tricks him into falling into an old well during the eclipse.  Dolores also has a vision of Jessie from \'Gerald\'s Game\' sitting on her father\'s lap during the event.')

book = Book.create([title: 'Insomnia', published_date: Date.parse('15/9/1994'), synopsis: 'As two friends begin to sleep less and less each night despite all efforts, they realize there is another plane of existence they are now aware of where they must stop a plot by The Crimson King to orchestrate the death of a boy who is prophesied to be instrumental in defeating him.'])

repeater_q = Repeater.create([name: 'The Crimson King', category: 'character', description: 'The archetypal embodiment of evil in King\'s universe, The Crimson King is the primary antagonist of several of his novels, including \'The Dark Tower\' series.'])

book[0].repeaters << repeater_k
book[0].repeaters << repeater_q

book[0].associations[0].update_attributes(plot: 'Derry is the setting for \'Insomnia\' and all events that take place in the novel.')

book[0].associations[1].update_attributes(plot: 'In \'Insomnia\', The Crimson King makes his first actual appearance in King\'s universe.  We discover him as the mastermind behind the events the protagonists must prevent in order for a very important young child from being killed.')

book = Book.create([title: 'The Dark Tower IV: Wizard and Glass', published_date: Date.parse('4/11/1997'), synopsis: '\'Wizard and Glass\' takes the readers back in time to tell the story of a young Roland Deschain, sent away by his father for fear of his safety after Roland earns his guns to become the youngest gunslinger ever.  In the company of his closest companions, Roland falls in love for the first and only time and he and his friends must foil the plans of those that serve The Good Man who will eventually cause the downfall of Roland\'s home, Gilead.'])

book[0].repeaters << repeater_g
book[0].repeaters << repeater_l
book[0].repeaters << repeater_m
book[0].repeaters << repeater_h
book[0].repeaters << repeater_c
book[0].repeaters << repeater_i
book[0].repeaters << repeater_r

book[0].associations[0].update_attributes(plot: 'The fourth volume of The Dark Tower Series departs from the current narrative, as we find a fourteen year old Roland having just passed his manhood test to become a gunslinger.  Roland is sent to a far away barony where he meets his first and only love, as well as confronts his first real test as a gunslinger.')

book[0].associations[1].update_attributes(plot: 'Eddie begins this novel by defeating Blaine the Mono in a battle of riddles before it kills him and his ka-tet.  However most of the novel takes place in the distant past with everyone except Roland only reappearing at the very end to confront Marten Broadcloak.')

book[0].associations[2].update_attributes(plot: 'In this volume of the Dark Tower, Susannah appears only at the very beginning and end as the companions take a back seat to the story of a young Roland.')

book[0].associations[3].update_attributes(plot: 'In this volume of the Dark Tower, Jake appears only at the very beginning and end as the companions take a back seat to the story of a young Roland.')

book[0].associations[4].update_attributes(plot: 'Flagg appears in the very end of this novel in the guise of Marten Broadcloak, an adversary from Roland\'s past and one of Flagg\'s many alter egos.')

book[0].associations[5].update_attributes(plot: '')

book[0].associations[6].update_attributes(plot: '')









