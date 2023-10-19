extends Control

var sceneNumber = 0
var nameOfParticipant
var pathScreenshot
var arrOfUsedQuestions = []
var numCorrect = 0.0
var correctAnswer
var questions
var answers
const numOfQuestionsInList = 24 # the number of questions to pull from aka however many questions are in the generator
const numOfQuestionsTotal = 15.0 #has to be <= numOfQuestionsInList
var gotCorrectAnswerFirstTime = true
var numOfIncorrect = 0.0
func _ready():
	randomize()
	questions = generateQuestions()
	answers = generateAnswers()
	generateNewQuestion()

func generateQuestions():

	var q2Answers = [
			"Co-worker emails classified documents to his home computer",
			"Co-worker complains of working overtime on a special project for management",
			"Co-worker shares pictures of his recent trip to China to see relatives",
			"Co-worker shows you the new watch he received for his birthday", 0
		  ]

	var q2 = {"Question": "Which of the following must be reported?", "Number": 2, "Answers": q2Answers}

	var q3Answers = [
			"Ignore it",
			"Wait and see if he says anything else",
			"Report it to IT Personel via a ticket",
			"Call the police", 2
		  ]
	var q3 = {"Question": "What should you do if a co-worker tells of sending money to a suspected international terrorist organization?", "Number": 3, "Answers": q3Answers}


	var q8Answers = [
			"True",
			"False",
			" ",
			" ", 0
		  ]
	var q8 = {"Question": "Whistleblower laws prohibit employers from retaliating against employees who report wrongdoing.", "Number": 8, "Answers": q8Answers}

	var q12Answers = [
			"Fine and up to five years in prison",
			"No punishment necessary",
			"No punishment and they get rewarded with a promotion",
			"A slap on the wrist", 0
		  ]
	var q12 = {"Question": "Unauthorized removal and retention of classified documents or material is punishable by:", "Number": 12, "Answers": q12Answers}

	var q14Answers = [
			"Everyone with access to classified information",
			"Original classifiers",
			"Secretary of Defense",
			"No one is personally responsible", 0
		  ]
	var q14 = {"Question": "Who is personally responsible for taking proper precautions to ensure that unauthorized persons do not gain access to classified information?", "Number": 14, "Answers": q14Answers}
	

	var q16Answers = [
			"True",
			"False",
			" ",
			" ", 0
		  ]
	var q16 = {"Question": "DOD contracts shall require contractors to report the potential classification of aggregated or compiled CUI to a DOD representative.", "Number": 16, "Answers": q16Answers}

	var q17Answers = [
			"Authorized",
			"Unauthorized",
			"Privileged",
			"System Administrator", 0
		  ]
	var q17 = {"Question": "Cyber insider threat is an individual with _____________ access who wittingly or unwittingly attempts to disrupt a computer network or system.", "Number": 17, "Answers": q17Answers}

	var q18Answers = [
			"User Activity Monitoring",
			"Entry/Exit screening",
			"All of the above",
			"Two-factor authentication", 2
		  ]
	var q18 = {"Question": "Which of these protects against Cyber Threats?", "Number": 18, "Answers": q18Answers}

	var q19Answers = [
			"Policy Violations",
			"Carelessness",
			"Sharing credentials",
			"All of the above", 3
		  ]
	var q19 = {"Question": "________ by trusted Insiders can result in system access to malicious outsiders.", "Number": 19, "Answers": q19Answers}

	
	var q21Answers = [
			"Negligent",
			"Malicious",
			"Corporate",
			"Deliberate", 0
		  ]
	var q21 = {"Question": "A _____________ insider is an employee who makes a mistake, such as losing a company device or falling for a phishing scam.", "Number": 21, "Answers": q21Answers}

	var q22Answers = [
			"Wear clothing with company logos so you can be identified by your points of contact",
			"Do not use computer or fax equipment at foreign hotels or business centers for sensitive matters",
			"Make sure as many people as possible know where you are travelling",
			"Dispose of unwanted sensitive material as soon as possible", 1
		  ]
	var q22 = {"Question": "Which of these is a Best Practice when travelling to a foreign country?", "Number": 22, "Answers": q22Answers}

	var q23Answers = [
			"Attempts to compromise electronic devices via technical means",
			"Searches of hotel rooms, briefcases, luggage, etc.",
			"Bugged hotel rooms or airline cabins",
			"All of the above", 3
		  ]
	var q23 = {"Question": "Which of these is a common collection technique used by an adversary?", "Number": 23, "Answers": q23Answers}

	var q25Answers = [
			"Respond and ask how they learned about the project",
			"Send the requested information",
			"Do not respond and report to IT Team via a ticket",
			"Wait for a second request",2
		  ]
	var q25 = {"Question": "You receive an email from someone you have never met asking about a classified project. What should you do?", "Number": 25, "Answers": q25Answers}

	var q26Answers = [
			"Don’t say anything to avoid embarrassing the foreign visitor",
			"Report to security personnel and debrief personnel who came in contact with the visitor",
			"Do not report, but locate the visitor and insist that they rejoin the tour group",
			"Immediately throw the visitor out", 1
		  ]
	var q26 = {"Question": "During a facility tour of a company with classified contracts, a foreign visitor wanders away from the tour group. What should you do?", "Number": 26, "Answers": q26Answers}

	var q27Answers = [
			"Consider what information is being exposed, where, when, and to whom",
			"Request a detailed travel briefing from your Counterintelligence Support Office",
			"Carefully consider whether equipment or software can be adequately protected on the trip",
			"All of the above", 3
		  ]
	var q27 = {"Question": "You have been asked to attend an overseas conference to share your knowledge about a new technology being developed. What should you do before you go?", "Number": 27, "Answers": q27Answers}


	var q31Answers = [
			"Appeal to a target's ideological leaning to gain their help",
			"Promise financial help to the target in order to gain the target’s help",
			"Use blackmail to gain the target’s help",
			"All of the above", 3
		  ]
	var q31 = {"Question": "An adversary trying to get information will:", "Number": 31, "Answers": q31Answers}

	var q32Answers = [
			"Drug or Alcohol abuse",
			"Gambling debts",
			"Adultery",
			"All of the above", 3
		  ]
	var q32 = {"Question": "Exploitable weaknesses that may be used by an adversary as leverage against the target include:", "Number": 32, "Answers": q32Answers}

	var q33Answers = [
			"Report his poor security practices",
			"Explain why simple passwords are so easily hacked",
			"Talk with your co-workers about the situation",
			"Call the FBI immediately", 0
		  ]
	var q33 = {"Question": "Your co-worker has trouble remembering his password so he keeps it on a sticky note under his keyboard. What should you do?", "Number": 33, "Answers": q33Answers}

	var q34Answers = [
			"Unauthorized computer access",
			"Suspicious emails",
			"Unauthorized changes to your computer",
			"All of the above", 3
		  ]
	var q34 = {"Question": "Which of these should be reported to your IT Team?", "Number": 34, "Answers": q34Answers}

	var q35Answers = [
			"Open the attachment right away",
			"Do not open it and report to your IT Team",
			"Delete the email right away",
			"Reply to the sender and ask for more information", 1
		   ]
	var q35 = {"Question": "You receive an email from dod_policy@gmail.com asking you to read the attached policy change. What should you do?", "Number": 35, "Answers": q35Answers}

	var q36Answers = [
			"True",
			"False", 0
		  ]
	var q36 = {"Question": "Passwords should be complex combinations of numbers, symbols, and uppercase and lowercase letters.", "Number": 36, "Answers": q36Answers}

	var q37Answers = [
			"Un-patched or outdated software vulnerabilities",
			"Removable media (USB drives)",
			"Use of weak or default passwords",
			"All of the above", 3
		  ]
	var q37 = {"Question": "Which of these methods are used by our adversaries to compromise our systems?", "Number": 37, "Answers": q37Answers}
	
	var q38Answers = [
		"Delete the phishing email",
		"Unplug the computer. This will get rid of any malware.",
		"Change any compromised passwords and report to IT Team via ticket",
		"Do nothing", 2
	]
	var q38 = "If you fall for a phishing scam via a login, what should you do to limit the damage?"
	
	var q39Answers  =[
		"Allow Authentication",
		"Report to IT Team via ticket",
		"Ignore it",
		"Turn off device notifications", 1
	]
	
	var q39 = "If you get an authenticator request, but you are not at your computer or have not requested it via login, what should you do?"
	
	
	var qArray = [(q2["Question"])]
	qArray.append(q3["Question"])
	qArray.append(q8["Question"])
	qArray.append(q12["Question"])
	qArray.append(q14["Question"])
	qArray.append(q16["Question"])
	qArray.append(q17["Question"])
	qArray.append(q18["Question"])
	qArray.append(q19["Question"])
	qArray.append(q21["Question"])
	qArray.append(q22["Question"])
	qArray.append(q23["Question"])
	qArray.append(q25["Question"])
	qArray.append(q26["Question"])
	qArray.append(q27["Question"])
	qArray.append(q31["Question"])
	qArray.append(q32["Question"])
	qArray.append(q33["Question"])
	qArray.append(q34["Question"])
	qArray.append(q35["Question"])
	qArray.append(q36["Question"])
	qArray.append(q37["Question"])
	qArray.append(q38)
	qArray.append(q39)
	
	return qArray


func generateAnswers():

	var q2Answers = [
			"Co-worker emails classified documents to his home computer",
			"Co-worker complains of working overtime on a special project for management",
			"Co-worker shares pictures of his recent trip to China to see relatives",
			"Co-worker shows you the new watch he received for his birthday", 0
		  ]

	var q2 = {"Question": "Which of the following must be reported?", "Number": 2, "Answers": q2Answers}

	var q3Answers = [
			"Ignore it",
			"Wait and see if he says anything else",
			"Report it to IT Personel via a ticket",
			"Call the police", 2
		  ]
	var q3 = {"Question": "What should you do if a co-worker tells of sending money to a suspected international terrorist organization?", "Number": 3, "Answers": q3Answers}

	var q8Answers = [
			"True",
			"False",
			" ",
			" ", 0
		  ]
	var q8 = {"Question": "Whistleblower laws prohibit employers from retaliating against employees who report wrongdoing.", "Number": 8, "Answers": q8Answers}

	var q12Answers = [
			"Fine and up to five years in prison",
			"No punishment necessary",
			"No punishment and they get rewarded with a promotion",
			"A slap on the wrist", 0
		  ]
	var q12 = {"Question": "Under 18 U.S. Code § 1924, unauthorized removal and retention of classified documents or material is punishable by:", "Number": 12, "Answers": q12Answers}

	var q14Answers = [
			"Everyone with access to classified information",
			"Original classifiers",
			"Secretary of Defense",
			"No one is personally responsible", 0
		  ]
	var q14 = {"Question": "Who is personally responsible for taking proper precautions to ensure that unauthorized persons do not gain access to classified information?", "Number": 14, "Answers": q14Answers}

	var q16Answers = [
			"True",
			"False",
			" ",
			" ", 0
		  ]
	var q16 = {"Question": "DOD contracts shall require contractors to report the potential classification of aggregated or compiled CUI to a DOD representative.", "Number": 16, "Answers": q16Answers}

	var q17Answers = [
			"Authorized",
			"Unauthorized",
			"Privileged",
			"System Administrator", 0
		  ]
	var q17 = {"Question": "Cyber insider threat is an individual with _____________ access who wittingly or unwittingly attempts to disrupt a computer network or system.", "Number": 17, "Answers": q17Answers}

	var q18Answers = [
			"User Activity Monitoring",
			"Entry/Exit screening",
			"All of the above",
			"Two-factor authentication", 2
		  ]
	var q18 = {"Question": "Which of these protects against Cyber Threats?", "Number": 18, "Answers": q18Answers}

	var q19Answers = [
			"Policy Violations",
			"Carelessness",
			"Sharing credentials",
			"All of the above", 3
		  ]
	var q19 = {"Question": "________ by trusted Insiders can result in system access to malicious outsiders.", "Number": 19, "Answers": q19Answers}

	var q21Answers = [
			"Negligent",
			"Malicious",
			"Corporate",
			"Deliberate", 0
		  ]
	var q21 = {"Question": "A _____________ insider is an employee who makes a mistake, such as losing a company device or falling for a phishing scam.", "Number": 21, "Answers": q21Answers}

	var q22Answers = [
			"Wear clothing with company logos so you can be identified by your points of contact",
			"Do not use computer or fax equipment at foreign hotels or business centers for sensitive matters",
			"Make sure as many people as possible know where you are travelling",
			"Dispose of unwanted sensitive material as soon as possible", 1
		  ]
	var q22 = {"Question": "Which of these is a Best Practice when travelling to a foreign country?", "Number": 22, "Answers": q22Answers}

	var q23Answers = [
			"Attempts to compromise electronic devices via technical means",
			"Searches of hotel rooms, briefcases, luggage, etc.",
			"Bugged hotel rooms or airline cabins",
			"All of the above", 3
		  ]
	var q23 = {"Question": "Which of these is a common collection technique used by an adversary?", "Number": 23, "Answers": q23Answers}

	var q25Answers = [
			"Respond and ask how they learned about the project",
			"Send the requested information",
			"Do not respond and report to IT Team via a ticket",
			"Wait for a second request",2
		  ]
	var q25 = {"Question": "You receive an email from someone you have never met asking about a classified project. What should you do?", "Number": 25, "Answers": q25Answers}

	var q26Answers = [
			"Don’t say anything to avoid embarrassing the foreign visitor",
			"Report to security personnel and debrief personnel who came in contact with the visitor",
			"Do not report, but locate the visitor and insist that they rejoin the tour group",
			"Immediately throw the visitor out", 1
		  ]
	var q26 = {"Question": "During a facility tour of a company with classified contracts, a foreign visitor wanders away from the tour group. What should you do?", "Number": 26, "Answers": q26Answers}

	var q27Answers = [
			"Consider what information is being exposed, where, when, and to whom",
			"Request a detailed travel briefing from your Counterintelligence Support Office",
			"Carefully consider whether equipment or software can be adequately protected on the trip",
			"All of the above", 3
		  ]
	var q27 = {"Question": "You have been asked to attend an overseas conference to share your knowledge about a new technology being developed. What should you do before you go?", "Number": 27, "Answers": q27Answers}

	var q31Answers = [
			"Appeal to a target's ideological leaning to gain their help",
			"Promise financial help to the target in order to gain the target’s help",
			"Use blackmail to gain the target’s help",
			"All of the above", 3
		  ]
	var q31 = {"Question": "An adversary trying to get information will:", "Number": 31, "Answers": q31Answers}

	var q32Answers = [
			"Drug or Alcohol abuse",
			"Gambling debts",
			"Adultery",
			"All of the above", 3
		  ]
	var q32 = {"Question": "Exploitable weaknesses that may be used by an adversary as leverage against the target include:", "Number": 32, "Answers": q32Answers}

	var q33Answers = [
			"Report his poor security practices",
			"Explain why simple passwords are so easily hacked",
			"Talk with your co-workers about the situation",
			"Call the FBI immediately", 0
		  ]
	var q33 = {"Question": "Your co-worker has trouble remembering his password so he keeps it on a sticky note under his keyboard. What should you do?", "Number": 33, "Answers": q33Answers}

	var q34Answers = [
			"Unauthorized computer access",
			"Suspicious emails",
			"Unauthorized changes to your computer",
			"All of the above", 3
		  ]
	var q34 = {"Question": "Which of these should be reported to your IT Team?", "Number": 34, "Answers": q34Answers}

	var q35Answers = [
			"Open the attachment right away",
			"Do not open it and report to your IT Team via a ticket",
			"Delete the email right away",
			"Reply to the sender and ask for more information", 1
		   ]
	var q35 = {"Question": "You receive an email from a dod_policy.gov email address asking you to read the attached policy change. What should you do?", "Number": 35, "Answers": q35Answers}

	var q36Answers = [
			"True",
			"False", " ", " ", 0
		  ]
	var q36 = {"Question": "Passwords should be complex combinations of numbers, symbols, and uppercase and lowercase letters.", "Number": 36, "Answers": q36Answers}

	var q37Answers = [
			"Un-patched or outdated software vulnerabilities",
			"Removable media (USB drives)",
			"Use of weak or default passwords",
			"All of the above", 3
		  ]
	var q37 = {"Question": "Which of these methods are used by our adversaries to compromise our systems?", "Number": 37, "Answers": q37Answers}
	
	var q38Answers = [
		"Delete the phishing email",
		"Unplug the computer. This will get rid of any malware.",
		"Change any compromised passwords and report to IT Team via a ticket",
		"Do nothing", 2
	]
	var q38 = "If you fall for a phishing scam, what should you do to limit the damage?"
	
	var q39Answers  =[
		"Allow Authentication",
		"Report to IT Team via ticket",
		"Ignore it",
		"Turn off device notifications", 1
	]
	
	var q39 = "If you get an authenticator request, but you are not at your computer or have not requested it via login, what should you do?"
	
	
	
	var answersArray = [(q2["Answers"])]
	answersArray.append(q3["Answers"])
	answersArray.append(q8["Answers"])
	answersArray.append(q12["Answers"])
	answersArray.append(q14["Answers"])
	answersArray.append(q16["Answers"])
	answersArray.append(q17["Answers"])
	answersArray.append(q18["Answers"])
	answersArray.append(q19["Answers"])
	answersArray.append(q21["Answers"])
	answersArray.append(q22["Answers"])
	answersArray.append(q23["Answers"])
	answersArray.append(q25["Answers"])
	answersArray.append(q26["Answers"])
	answersArray.append(q27["Answers"])
	answersArray.append(q31["Answers"])
	answersArray.append(q32["Answers"])
	answersArray.append(q33["Answers"])
	answersArray.append(q34["Answers"])
	answersArray.append(q35["Answers"])
	answersArray.append(q36["Answers"])
	answersArray.append(q37["Answers"])
	answersArray.append(q38Answers)
	answersArray.append(q39Answers)
	
	return answersArray


func _on_Answer1_pressed():
	print("Button 1 pressed")
	if(correctAnswer == $Popup/Answer1.text):
		$Popup.hide()
		if (gotCorrectAnswerFirstTime == true):
			numCorrect = numCorrect+1
		var finished = checkFinishedGame()
		if (finished == true):
			endGame()
		else:
			generateNewQuestion()
			sceneNumber = 3
			$Continue.show()
		
	else:
		if(gotCorrectAnswerFirstTime == true):
			gotCorrectAnswerFirstTime = false
			numOfIncorrect = numOfIncorrect + 1
		$Popup.hide()
		$Retry.show()


func _on_Answer2_pressed():
	print("Button 2 pressed")
	if(correctAnswer == $Popup/Answer2.text):
		$Popup.hide()
		if gotCorrectAnswerFirstTime == true:
			numCorrect = numCorrect+1
		var finished = checkFinishedGame()
		if (finished == true):
			endGame()
		else:
			generateNewQuestion()
			sceneNumber = 3
			$Continue.show()
		
	else:
		if(gotCorrectAnswerFirstTime == true):
			gotCorrectAnswerFirstTime = false
			numOfIncorrect = numOfIncorrect + 1
		$Popup.hide()
		$Retry.show()


func _on_Answer3_pressed():
	print("Button 3 pressed")
	
	if(correctAnswer == $Popup/Answer3.text):
		$Popup.hide()
		if gotCorrectAnswerFirstTime==true:
			numCorrect = numCorrect+1
		var finished = checkFinishedGame()
		if (finished == true):
			endGame()
		else:
			generateNewQuestion()
			sceneNumber = 3
			$Continue.show()
		
	else:
		if(gotCorrectAnswerFirstTime == true):
			gotCorrectAnswerFirstTime = false
			numOfIncorrect = numOfIncorrect + 1
		$Popup.hide()
		$Retry.show()


func _on_Answer4_pressed():
	print("Button 4 pressed")
	if(correctAnswer == $Popup/Answer4.text):
		$Popup.hide()
		if (gotCorrectAnswerFirstTime == true):
			numCorrect = numCorrect+1
		var finished = checkFinishedGame()
		if (finished == true):
			endGame()
		else:
			generateNewQuestion()
			sceneNumber = 3
			$Continue.show()
			
	else:
		if(gotCorrectAnswerFirstTime == true):
			gotCorrectAnswerFirstTime = false
			numOfIncorrect = numOfIncorrect + 1
		$Popup.hide()
		$Retry.show()
		
func generateNewQuestion():
	gotCorrectAnswerFirstTime = true
	var questionNumber = checkIfAnswered()
	$Popup/QuestionLabel.text = str(questions[questionNumber -1 ])
	var originalAnswerArrayforQuestion = answers[questionNumber -1]
	correctAnswer = originalAnswerArrayforQuestion[originalAnswerArrayforQuestion[4]]
	var answerArrayforQuestion = originalAnswerArrayforQuestion
#	answerArrayforQuestion = randomizeAnswers(originalAnswerArrayforQuestion)
	$Popup/Answer1.text = answerArrayforQuestion[0]
	$Popup/Answer2.text = answerArrayforQuestion[1]
	$Popup/Answer3.text = answerArrayforQuestion[2]
	$Popup/Answer4.text = answerArrayforQuestion[3]
	print(correctAnswer)


func checkIfAnswered():
	var questionNumber
	var check = false
	while check == false:
		questionNumber = randi() % numOfQuestionsInList - 2
		if(checkAlmostFinishedGame()):
				questionNumber = numOfQuestionsInList -1
				check = true
		elif arrOfUsedQuestions.has(questionNumber):
			questionNumber = randi() % numOfQuestionsInList - 2
		else:
			arrOfUsedQuestions.append(questionNumber)
			check = true
	return questionNumber

func checkFinishedGame():
	if(numCorrect + numOfIncorrect == numOfQuestionsTotal):
		return true
	return false
	
func checkAlmostFinishedGame():
	if(numCorrect + numOfIncorrect == numOfQuestionsTotal - 1 ):
		return true
	return false
	

func endGame():
	numCorrect = numOfQuestionsTotal - numOfIncorrect
	
	var score = numCorrect / numOfQuestionsTotal * 100
	var snakeScore = $"../Score/ScoreText".text
	
	$"../SnakeTick".queue_free()
	$EndGame/ThanksLabel.text ="You have finished all questions, \n" + nameOfParticipant + "!"
	if(score == 100):
		$EndGame/Score.text = "Score: " + str(score).substr(0,3) + "% Correct"
	elif(score < 10):
		$EndGame/Score.text = "Score: " + str(score).substr(0,1) + "% Correct"
	else:
		$EndGame/Score.text = "Score: " + str(score).substr(0,2) + "% Correct"
	
	$EndGame/ScoreSnake.text = "Snake Length: " + str(snakeScore)
	
	
	$EndGame.show()


func _on_StartGame_pressed():
	$StartScreen.hide()
	sceneNumber = 1
	$NameInputPopup.show()
	
func _input(event):
	if event is InputEventKey:
		if event.pressed:
			#sceneNumber = 0 is StartScreen
			#sceneNumber = 1 is NameInputPopup
			#sceneNumber = 2 is the main snake game or the end of the game
			#sceneNumber = 3 is a question
			if sceneNumber == 3:
				_on_ContinueButton_pressed()
	

func _on_ContinueButton_pressed():
	$Continue.hide()
	sceneNumber = 2
	$"../SnakeTick".start()
	
func saveScreenshot():
	var vpt: Viewport = get_viewport()
	var txt: Texture = vpt.get_texture()
	var img: Image = txt.get_data()
	img.flip_y()
	var buf = img.save_png_to_buffer()
	JavaScript.download_buffer(buf, "screenshot.png")
	$EndGame/Saved.show()
	$EndGame/SendLabel.show()
	$EndGame/TakeScreenshot.hide()

func _on_TakeScreenshot_pressed():
	saveScreenshot()


func _on_PlayGame_pressed():
	nameOfParticipant = $NameInputPopup/EnterNameEdit.text
	if(nameOfParticipant.length() >= 1):
		$NameInputPopup.hide()
		$"../SnakeTick".start()
		sceneNumber = 3
		
	else:
		$NameInputPopup/SecondEnterNameLabel.show()
