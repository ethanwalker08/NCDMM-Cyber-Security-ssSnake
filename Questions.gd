extends Control

var sceneNumber = 0
var nameOfParticipant
var pathScreenshot
var arrOfUsedQuestions = []
var numCorrect = 0.0
var correctAnswer
var questions
var answers
const numOfQuestionsInList = 40 # the number of questions to pull from aka however many questions are in the generator
const numOfQuestionsTotal = 15.0 #has to be <= numOfQuestionsInList
var gotCorrectAnswerFirstTime = true
var numOfIncorrect = 0.0
func _ready():
	randomize()
	questions = generateQuestions()
	answers = generateAnswers()
	generateNewQuestion()

func generateQuestions():

	var q1 = "Which of the following must be reported?"

	var q2 = "What should you do if a co-worker tells of sending money to a suspected international terrorist organization?"

	var q3 = "Whistleblower laws prohibit employers from retaliating against employees who report wrongdoing."

	var q4 = "Unauthorized removal and retention of classified documents or material is punishable by:"


	var q5 = "Who is personally responsible for taking proper precautions to ensure that unauthorized persons do not gain access to classified information?"

	var q6 = "DOD contracts shall require contractors to report the potential classification of aggregated or compiled CUI to a DOD representative."

	var q7 = "Cyber insider threat is an individual with _____________ access who wittingly or unwittingly attempts to disrupt a computer network or system."


	var q8 = "Which of these protects against Cyber Threats?"

	var q9 = "________ by trusted Insiders can result in system access to malicious outsiders."


	var q10 = "A _____________ insider is an employee who makes a mistake, such as losing a company device or falling for a phishing scam."

	var q11 = "Which of these is a Best Practice when travelling to a foreign country?"

	var q12 = "Which of these is a common collection technique used by an adversary?"

	var q13 = "You receive an email from someone you have never met asking about a classified project. What should you do?"

	var q14 = "During a facility tour of a company with classified contracts, a foreign visitor wanders away from the tour group. What should you do?"

	var q15 = "You have been asked to attend an overseas conference to share your knowledge about a new technology being developed. What should you do before you go?"

	var q16 = "An adversary trying to get information will:"

	var q17 = "Exploitable weaknesses that may be used by an adversary as leverage against the target include:"


	var q18 = "Your co-worker has trouble remembering his password so he keeps it on a sticky note under his keyboard. What should you do?"
	

	var q19 = "Which of these should be reported to your IT Team?"

	var q20 = "You receive an email from dod_policy@gmail.com asking you to read the attached policy change. What should you do?"

	var q21 = "Passwords should be complex combinations of numbers, symbols, and uppercase and lowercase letters."

	var q22 = "Which of these methods are used by our adversaries to compromise our systems?"
	
	var q23 = "If you fall for a phishing scam, what should you do to limit the damage?"
	
	var q24 = "If you get an authenticator request, but you are not at your computer or have not requested it via login, what should you do?"
	
	var q25 = "Which of the following passwords is strongest? (for demonstration purposes only)"
	
	var q26 = "What does CUI stand for?"
	
	var q27 = "True or false: CUI is automatically marked so you don't have to mark it as CUI yourself"
	
	var q28 = "Indicators of a phishing email include: "
	
	var q29 = "What should you do if you recieve an email from 'itticketforncdmm@gmail.com' which states you have to 'Quickly scan the QR code to update your 2FA. If you do not your account will be locked'"
	
	var q30 = "What should you do if you find a USB thumbdrive you have never seen before?"
	
	var q31 = "True or false: Printing CUI is prohibited"
	
	var q32 = "You've identified your project will include ITAR data… now what?"
	
	var q33 = "Which of the following is true of ITAR"
	
	var q34 = "How do you access, edit, and upload files with ITAR data?"
	
	var q35 = "How can you securely send and receive ITAR documents from/to external users?"
	
	var q36 = "True or false: ITAR data cannot be attached to an email directly, but a link to the data can be attached."
	
	var q37 = "What is the best answer to who is responsible for the cyber security at our company?"
	
	var q38 = "True or false: Cyber criminals only target larger companies."
	
	var q39 = "Which of these best describes how criminals start ransomware attacks?"
	
	var q40 = "What is ransomware?"
	
	var q41 = "True or false: It is considered safe to use the same complex password on all websites."
	
	var q42 = "What should you do after you learn about a data breach of a website? Choose the best answer."
	
	var q43 = "What are the characteristics of a strong password? Choose the best answer."
	
	var q44 = "If you want to share a password with someone, what's the best option?"
	
	var q45 = "Which website URL is legitimate?"
	
	var qArray = [q1]
	qArray.append(q2)
	qArray.append(q3)
	qArray.append(q4)
	qArray.append(q5)
	qArray.append(q6)
	qArray.append(q7)
	qArray.append(q8)
	qArray.append(q9)
	qArray.append(q10)
	qArray.append(q11)
	qArray.append(q12)
	qArray.append(q13)
	qArray.append(q14)
	qArray.append(q15)
	qArray.append(q16)
	qArray.append(q17)
	qArray.append(q18)
	qArray.append(q19)
	qArray.append(q20)
	qArray.append(q21)
	qArray.append(q22)
	qArray.append(q23)
	qArray.append(q24)
	qArray.append(q25)
	qArray.append(q26)
	qArray.append(q27)
	qArray.append(q28)
	qArray.append(q29)
	qArray.append(q30)
	qArray.append(q31)
	qArray.append(q32)
	qArray.append(q33)
	qArray.append(q34)
	qArray.append(q35)
	qArray.append(q36)
	qArray.append(q37)
	qArray.append(q38)
	qArray.append(q39)
	qArray.append(q40)
	qArray.append(q41)
	qArray.append(q42)
	qArray.append(q43)
	qArray.append(q44)
	qArray.append(q45)
	return qArray


func generateAnswers():

	var q1Answers = [
			"Co-worker emails classified documents to his home computer",
			"Co-worker complains of working overtime on a special project for management",
			"Co-worker shares pictures of his recent trip to China to see relatives",
			"Co-worker shows you the new watch he received for his birthday", 0
		  ]
	
	var q2Answers = [
			"Ignore it",
			"Wait and see if he says anything else",
			"Report it to IT Personel via a ticket",
			"Call the police", 2
		  ]


	var q3Answers = [
			"True",
			"False",
			" ",
			" ", 0
		  ]

	var q4Answers = [
			"Fine and up to five years in prison",
			"No punishment necessary",
			"No punishment and they get rewarded with a promotion",
			"A slap on the wrist", 0
		  ]


	var q5Answers = [
			"Everyone with access to classified information",
			"Original classifiers",
			"Secretary of Defense",
			"No one is personally responsible", 0
		  ]

	

	var q6Answers = [
			"True",
			"False",
			" ",
			" ", 0
		  ]

	var q7Answers = [
			"Authorized",
			"Unauthorized",
			"Privileged",
			"System Administrator", 0
		  ]


	var q8Answers = [
			"User Activity Monitoring",
			"Entry/Exit screening",
			"All of the above",
			"Two-factor authentication", 2
		  ]


	var q9Answers = [
			"Policy Violations",
			"Carelessness",
			"Sharing credentials",
			"All of the above", 3
		  ]


	
	var q10Answers = [
			"Negligent",
			"Malicious",
			"Corporate",
			"Deliberate", 0
		  ]

	var q11Answers = [
			"Wear clothing with company logos so you can be identified by your points of contact",
			"Do not use computer or fax equipment at foreign hotels or business centers for sensitive matters",
			"Make sure as many people as possible know where you are travelling",
			"Dispose of unwanted sensitive material as soon as possible", 1
		  ]


	var q12Answers = [
			"Attempts to compromise electronic devices via technical means",
			"Searches of hotel rooms, briefcases, luggage, etc.",
			"Bugged hotel rooms or airline cabins",
			"All of the above", 3
		  ]


	var q13Answers = [
			"Respond and ask how they learned about the project",
			"Send the requested information",
			"Do not respond and report to IT Team via a ticket",
			"Wait for a second request",2
		  ]


	var q14Answers = [
			"Don’t say anything to avoid embarrassing the foreign visitor",
			"Report to security personnel and debrief personnel who came in contact with the visitor",
			"Do not report, but locate the visitor and insist that they rejoin the tour group",
			"Immediately throw the visitor out", 1
		  ]


	var q15Answers = [
			"Consider what information is being exposed, where, when, and to whom",
			"Request a detailed travel briefing from your Counterintelligence Support Office",
			"Carefully consider whether equipment or software can be adequately protected on the trip",
			"All of the above", 3
		  ]



	var q16Answers = [
			"Appeal to a target's ideological leaning to gain their help",
			"Promise financial help to the target in order to gain the target’s help",
			"Use blackmail to gain the target’s help",
			"All of the above", 3
		  ]


	var q17Answers = [
			"Drug or Alcohol abuse",
			"Gambling debts",
			"Adultery",
			"All of the above", 3
		  ]


	var q18Answers = [
			"Report his poor security practices",
			"Explain why simple passwords are so easily hacked",
			"Talk with your co-workers about the situation",
			"Call the FBI immediately", 0
		  ]

	
	var q19Answers = [
			"Unauthorized computer access",
			"Suspicious emails",
			"Unauthorized changes to your computer",
			"All of the above", 3
		  ]


	var q20Answers = [
			"Open the attachment right away",
			"Do not open it and report to your IT Team",
			"Delete the email right away",
			"Reply to the sender and ask for more information", 1
		   ]


	var q21Answers = [
			"True",
			"False", 
			" ", 
			" ", 0
		  ]


	var q22Answers = [
			"Un-patched or outdated software vulnerabilities",
			"Removable media (USB drives)",
			"Use of weak or default passwords",
			"All of the above", 3
		  ]

	
	var q23Answers = [
		"Delete the phishing email",
		"Unplug the computer. This will get rid of any malware.",
		"Change any compromised passwords and report to IT Team via ticket",
		"Do nothing", 2
	]

	
	var q24Answers  =[
		"Allow Authentication",
		"Report to IT Team via ticket",
		"Ignore it",
		"Turn off device notifications", 1
	]
	

	
	var q25Answers  =[
		"IH4V3APASS",
		"123456",
		"iMu$inga1onGpa$$w0rD+oday!",
		"Thisismypassword", 2
	]
	
	var q26Answers  =[
		"Classifed Unerving Information",
		"Certified Useful ITAR",
		"Controlled Unclassified Information",
		"Crude Unified Interoperative", 2
	]
	
	var q27Answers  =[
		"True",
		"False",
		" ",
		" ", 1
	]
	var q28Answers  =[
		"Spelling errors",
		"Fake Domains",
		"Threats such as shutting down features",
		"All of the Above", 3
	]
	
	var q29Answers  =[
		"Report the suspicious email to your IT Team via a ticket",
		"Ignore the email",
		"Scan the QR code",
		"Reply to the email and ask for more details", 0
	]
	
	var q30Answers  =[
		"Plug it into your company device, it could be someones at the office, better check to find out",
		"Plug it into your personal device, it isn't a company device so it should be okay",
		"Bring it to work and show everyone your cool new USB drive",
		"Ignore it and leave it where you found it, you dont want to touch what isn't yours", 3
	]
	
	var q31Answers  =[
		"True",
		"False",
		" ",
		" ", 0
	]
	
	var q32Answers  =[
		"A. Only give access to team members who have a business purpose to view the data and are authorized",
		"B. Contact the help desk to create an ITAR approved Sharepoint Site",
		"C. Store the data in your Microsoft Teams files or locally on your computer",
		"D. both A and B", 3
	]
	
	var q33Answers  =[
		"ITAR data is considered a subset of CUI which goes beyond the requirements for normal CUI",
		"Government approval is required before exporting data with non-U.S. persons or companies.",
		"You cannot store any ITAR Data in our normal SharePoint, Teams, OneDrive OR  on your physical laptop",
		"All of the above", 3
	]
	
	var q34Answers  =[
		"In the Office Applications on windows",
		"In the browser from the document library of your High Security Sharepoint Site",
		"Download the files, edit, and reupload them to the High Security Sharepoint",
		"None of the above, ITAR is uneditable", 1
	]
	
	var q35Answers  =[
		"ITAR can be sent and recieved via email",
		"ITAR cannot sent/recieved from external users",
		"ITAR can only be sent and recieved via a physical postal service",
		"ITAR can only be digitally uploaded to the High Security Sharepoint External Collaboration Site", 3
	]
	
	var q36Answers  =[
		"True",
		"False",
		" ",
		" ", 0
	]
	
	var q37Answers  =[
		"Top executives only, they run the business so they are responsible",
		"IT Team, because they run the security controls",
		"Managers, because they are responsible for their staff members actions",
		"All staff members should know the basics of cyber security to reduce the risk of an attack", 3
	]
	
	var q38Answers  =[
		"True",
		"False",
		" ",
		" ", 1
	]
	
	var q39Answers  =[
		"Sending a scam email with links or attachments that put your data and network at risk.",
		"Getting into your server through vulnerabilities and installing malware",
		"Using infected websites that automatically download malicious software to your computer.",
		"All of the above", 3
	]
	
	var q40Answers  =[
		"Software that infects computers and holds user/company data hostage until you pay the attackers",
		"Hardware inserted into a computer to externally store it's data such as a USB thumbdrive",
		"Software used to protect your computer from harmful viruses",
		"A form of cryptocurrency", 0
	]
	
	var q41Answers  =[
		"True",
		"False",
		" ",
		" ", 1
	]
	
	var q42Answers =[
		"Nothing",
		"Change password only on that site",
		"Change password on that site and any other site that may use that or a similar password",
		"Don't visit that site again, if you dont visit it again nothing can happen", 2
	]
	
	var q43Answers  =[
		"Long",
		"Long, complex, random, unique, with special characters and numbers",
		"Easily memorized",
		"Long and random with numbers like 4 and 3 replacing letters like A and E", 1
	]
	
	var q44Answers  =[
		"Email",
		"Text Message",
		"You should never share a password",
		"A phone call", 2
	]
	
	var q45Answers  =[
		"https://www.payapl.com/us/webapps/mpp/requesting-payments",
		"http://www.paypay.com.home/",
		"https://www.pay.pal.com",
		"https://www.paypal.com/us/home", 3
	]
	
	var answersArray = [q1Answers]
	answersArray.append(q2Answers)
	answersArray.append(q3Answers)
	answersArray.append(q4Answers)
	answersArray.append(q5Answers)
	answersArray.append(q6Answers)
	answersArray.append(q7Answers)
	answersArray.append(q8Answers)
	answersArray.append(q9Answers)
	answersArray.append(q10Answers)
	answersArray.append(q11Answers)
	answersArray.append(q12Answers)
	answersArray.append(q13Answers)
	answersArray.append(q14Answers)
	answersArray.append(q15Answers)
	answersArray.append(q16Answers)
	answersArray.append(q17Answers)
	answersArray.append(q18Answers)
	answersArray.append(q19Answers)
	answersArray.append(q20Answers)
	answersArray.append(q21Answers)
	answersArray.append(q22Answers)
	answersArray.append(q23Answers)
	answersArray.append(q24Answers)
	answersArray.append(q25Answers)
	answersArray.append(q26Answers)
	answersArray.append(q27Answers)
	answersArray.append(q28Answers)
	answersArray.append(q29Answers)
	answersArray.append(q30Answers)
	answersArray.append(q31Answers)
	answersArray.append(q32Answers)
	answersArray.append(q33Answers)
	answersArray.append(q34Answers)
	answersArray.append(q35Answers)
	answersArray.append(q36Answers)
	answersArray.append(q37Answers)
	answersArray.append(q38Answers)
	answersArray.append(q39Answers)
	answersArray.append(q40Answers)
	answersArray.append(q41Answers)
	answersArray.append(q42Answers)
	answersArray.append(q43Answers)
	answersArray.append(q44Answers)
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
	$EndGame/ThanksLabel.text =nameOfParticipant
	if(score == 100):
		$EndGame/Score.text = str(score).substr(0,3) + "%"
	elif(score < 10):
		$EndGame/Score.text = str(score).substr(0,1) + "%"
	else:
		$EndGame/Score.text = str(score).substr(0,2) + "%"
	
	$EndGame/ScoreSnake.text = str(snakeScore)
	
	
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
	OS.shell_open("mailto:ethan.walker@ncdmm.org?subject=NCDMM Cyber Ninja Screenshot&body=Please insert your screenshot here")
	$EndGame/Saved.show()
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
