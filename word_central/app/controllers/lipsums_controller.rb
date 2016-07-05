class LipsumsController < ApplicationController

	def new

	end

	def create
		quotes = [
			"I think the only difference between me and the other candidates is that I’m more honest and my women are more beautiful.",
			"If people bring so much courage to this world the world has to kill them to break them, so of course it kills them. The world breaks every one and afterward many are strong at the broken places. But those that will not break it kills. It kills the very good and the very gentle and the very brave impartially. If you are none of these you can be sure it will kill you too but there will be no special hurry.",
			"Sometimes people write novels and they just be so wordy and so self-absorbed.  I am not a fan of books.  I would never want a book's autograph.  I am a proud non-reader of books.",
			"What we call the beginning is often the end. And to make an end is to make a beginning. The end is where we start from.",
			"The writing process, the way I go about it is I do whatever the beat feels like, whatever the beat is telling me to do. Usually when the beat comes on, I think of a hook or the subject I want to rap about almost instantly. Within four, eight bars of it playing I'm just like, 'Oh, OK. This is what I wanna do'.",
			"If I can't practice, I can't practice man. If I'm hurt, I'm hurt. I mean … simple as that. It ain't about that... I mean it's... It's not about that... At all. You know what I'm saying I mean... But it's...it's easy … to, to talk about... It's easy to sum it up when you're just talking about practice. We're sitting in here, and I'm supposed to be the franchise player, and we in here talking about practice. I mean, listen, we're talking about practice, not a game, not a game, not a game, we talking about practice. Not a game. Not, not … Not the game that I go out there and die for and play every game like it's my last. Not the game, but we're talking about practice, man. I mean, how silly is that? … And we talking about practice. I know I supposed to be there. I know I'm supposed to lead by example... I know that... And I'm not.. I'm not shoving it aside, you know, like it don't mean anything. I know it's important, I do. I honestly do... But we're talking about practice man. What are we talking about? Practice? We're talking about practice, man. [laughter from the media crowd] We're talking about practice. We're talking about practice. We ain't talking about the game. [more laughter] We're talking about practice, man. When you come to the arena, and you see me play, you see me play don't you? You've seen me give everything I've got, right? But we're talking about practice right now. We talking about practice.",
			"No poet, no artist of any art, has his complete meaning alone. His significance, his appreciation is the appreciation of his relation to the dead poets and artists. You cannot value him alone; you must see him, for contrast and comparison, among the dead. I mean this as a principle of aesthetic, not merely historical criticism...What happens when a new work of art is created is something that happens simultaneously to all the works of art which preceded it...The poet who is aware of this will be aware of great difficulties and responsibilities.",
			"The coward dies a thousand deaths, the brave but one.  Though the man who first said that was probably a coward. He knew a great deal about cowards but nothing about the brave. The brave dies perhaps two thousand deaths if he's intelligent. He simply doesn't mention them.",
			"I was going to McDonald's and Taco Bell every day. The kids behind the counter knew me - it wouldn't even faze them. Or I'd sit up at Denny's or Big Boy and just eat by myself. It was sad. I got so heavy that people started to not recognize me.",
			"All you have to do is write one true sentence. Write the truest sentence that you know.” So finally I would write one true sentence, and then go on from there. It was easy then because there was always one true sentence that I knew or had seen or had heard someone say",
			"My fingers are long and beautiful, as, it has been well documented, are various other parts of my body.", 
			"We shall not cease from exploration. And the end of all our exploring will be to arrive where we started and know the place for the first time.",
		]
		number_of = params[:number_of].to_i
		words_or_para = params[:words_or_para]

		if words_or_para == "words"
			@output = quotes.sample.split(" ").first(number_of).join(" ")
		else
			@output = (quotes.shuffle.first(number_of)).join("\n\n")		

		end


		render 'quote_generator'
	end

end
