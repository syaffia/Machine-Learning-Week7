#1.Creating DataFrame  
Name <- c("Aisha", "Bryan", "Chloe", "Daniel", "Emily")
Gender <- c("Female", "Male", "Female", "Male", "Female")
Age <- c(22, 23, 21, 24, 22)
Test_Score <- c(85, 78, 92, 65, 88)
Attendance <- c(90, 85, 95, 70, 88)
students <- data.frame(Name, Gender, Age, Test_Score, Attendance)
View(students)

# Access and Subset Data 

students["Test_Score"] 

students$Test_Score

students[1:3, ]

students[students$Age > 22, ]

students[students$Gender == "Female" & students$Test_Score > 80, ]


# 3. Add New Data  

# Add a new student

students <- rbind(
  students,
  data.frame(
    Name = "Lina",
    Gender = "Male",
    Age = 20,
    Test_Score = 95,
    Attendance = 92
  )
)

View(students)


# 4.
# create dataframe
students_na <- data.frame(
  
  Name = c("Aisha", "Bryan", "Chloe", "Daniel", "Emily"),
  
  Gender = c("Female", "Male", "Female", "Male", "Female"),
  
  Age = c(22, NA, 21, 24, 22),
  
  Test_Score = c(85, 78, NA, 65, 88),
  
  Attendance = c(90, 85, 95, NA, 88)
  
)

View(students_na)



#Check for missing values (NA) in the data frame 
is.na(students_na)


#Replace missing values in Age with the mean age 
students_na$Age[is.na(students_na$Age)] <- mean(students_na$Age, na.rm = TRUE)

View(students_na)

#Replace missing values in Test_Score with the median test score 
students_na$Test_Score[is.na(students_na$Test_Score)] <- median(students_na$Test_Score, na.rm = TRUE)

View(students_na)

#Replace missing values in Attendance with 0 
students_na$Attendance[is.na(students_na$Attendance)] <- 0

View(students_na)



