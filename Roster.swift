var spanish101: Set = ["Angela", "Declan", "Aldany", "Alex", "Sonny", "Alif", "Skyla"]
var german101: Set = ["Angela", "Alex", "Declan", "Kenny", "Cynara", "Adam"]
var advancedCalculus: Set = ["Cynara", "Gabby", "Angela", "Samantha", "Ana", "Aldany", "Galina", "Jasmine"]
var artHistory: Set = ["Samantha", "Vanessa", "Aldrian", "Cynara", "Kenny", "Declan", "Skyla"]
var englishLiterature: Set = ["Gabby", "Jasmine", "Alex", "Alif", "Aldrian", "Adam", "Angela"]
var computerScience: Set = ["Galina", "Kenny", "Sonny", "Alex", "Skyla"]

// Write your code below 🍎
var allStudents = spanish101.union(german101).union(advancedCalculus).union(artHistory).union(englishLiterature).union(computerScience)
print(allStudents)
print()

for student in allStudents {
  print(student)
}

print()
print("There are \(allStudents.count) students total that are currently enrolled in at least 1 class.")
print()

var noLanguage = allStudents.subtracting(german101.union(spanish101))

print(noLanguage)
print()

var spanishOrGerman = spanish101.symmetricDifference(german101)
print(spanishOrGerman)
print()

var languageAwardWinners = spanish101.intersection(german101).intersection(englishLiterature)

print(languageAwardWinners)
print()

var sevenPlus = 0

var classSet: Set = [spanish101, german101, englishLiterature, computerScience, artHistory, advancedCalculus]

for subject in classSet {
  if subject.count >= 7 {
    sevenPlus += 1
  }
}

print(sevenPlus)
print()

//Skyla Transferred START
var skyla = 0
for subject in classSet {
  if subject.contains("Skyla") {

    switch subject {
      case spanish101:
        spanish101.remove("Skyla")
        print("spanish101")
        print(spanish101)
      case german101:
        german101.remove("Skyla")
        print("german101")
        print(german101)
      case englishLiterature:
        englishLiterature.remove("Skyla")
        print("englishLiterature")
        print(englishLiterature)
      case computerScience:
        computerScience.remove("Skyla")
        print("computerScience")
        print(computerScience)
      case artHistory:
        artHistory.remove("Skyla")
        print("artHistory")
        print(artHistory)
      case advancedCalculus:
        advancedCalculus.remove("Skyla")
        print("advancedCalculus")
        print(advancedCalculus)
      default:
        print()
    }
    //subject.remove("Skyla")
    //print(subject)
    skyla += 1
  }
}

print()
print("Skyla was removed from \(skyla) classes.")
print()
//Skyla Transferred END

//Field Trip START
var fieldTrip = computerScience.union(advancedCalculus)
print("fieldTrip")
print(fieldTrip)
print()
//Field Trip END

//Field Trip Day Conflict START
var removed = fieldTrip.intersection(german101)
var conflict = fieldTrip.subtracting(german101)
print("The following students \(removed) were removed from the field trip due to a test in German 101.")
print()
print(conflict)
//Field Trip Day Conflict END

