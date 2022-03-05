.data

welcome: .asciiz "                ***Welcome to the Learning Management System (LMS)***\n\n				<Press 1 for Student Login>\n				<Press 2 for Teacher Login>\n\n				<Press 0 for Exit>\n\nYour Choice: "
password: .asciiz "Enter your Password Login ID: "

usernamemsg: .asciiz "Enter Your Staff ID: "
previous: .asciiz "\nPrevious: "
previousmuzammil: .asciiz "\nPrevious: "
previousazmi: .asciiz "\nPrevious: "
previoustwaha: .asciiz "\nPrevious: "

newline: .asciiz"\n"
teacherFile1: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/sr201010.txt"
teacherFile2: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/sr201011.txt"
teacherFile3: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/sr201012.txt"
teacherUsername1: .asciiz "sr201010\n"
teacherUsername2: .asciiz "sr201011\n"
teacherUsername3: .asciiz "sr201012\n"
studentFile1: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/student1.txt"
studentFile2: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/student2.txt"
studentFile3: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/student3.txt"
muzammilmarks: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/muzammilmarks.txt"
azmimarks: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/azmimarks.txt"
twahamarks: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/twahamarks.txt"
studentUsername1: .asciiz "cs201010\n"
studentUsername2: .asciiz "cs201011\n"
studentUsername3: .asciiz "cs201012\n"
SirAzmi: .asciiz "\nSIR AZMII "
SirMuzammil: .asciiz "\nSIR MUZAMMIL "
SirTwaha: .asciiz "\nSIR TWAHA "
passwordmsg: .asciiz "\nEnter Your password: "

Password: .space 2048
filepass1: .space 2048
filepass2: .space 2048
filepass3: .space 2048
filepass7: .space 2048
invalidLogin: .asciiz "\nInvalid"
username: .space 2048

mark_marks: .space 2048
chat_w: .space 2048
menu: .asciiz "\nPress:\n1. Attendence\n2. Update Marks\n3. Assignment\n4. Announcement\n5. Chat\n\n6. Logout\n"
menu1: .asciiz "\nPress:\n1. View Attendence\n2. View Marks\n3. Assignment\n4. Announcement\n5. Chat\n\n6. Logout\n>"
menu4: .asciiz "\n\nPress:\n1. Sir Muzammil\n2. Sir Azmii\n3. Sir Twaha\n4. go Back\n"
Attendence_msg: .asciiz "\nMark Attendence (P/A)\n"
marks_msg: .asciiz "\nADD MARKS WITH NAMES: (NAME: 00)\n"
Assignment_msg: .asciiz "\n\nAssignment:\n"

StudentAttendence: .asciiz "Your Attendence is: \n"
String: .asciiz "\nAttendence Marked!\n"
String2: .asciiz "\nAssignment Marked!\n"
String3: .asciiz "\nMarks Assigned.!\n"

prompt: .asciiz "\nAdd assignment (Do add serial no. along with your Name)\n"
StudentAssignment: .asciiz " Assignments are: \n"
prompt2: .asciiz "\nAdd Announcement (Do add serial no. along with your Name)\n"
StudentAnnouncement: .asciiz "\nYour Announcements are: \n"
prompt3: .asciiz "\nAdd your Msg to Chat \n(Do add your Name & 'OVER & OUT' at the end of your Message)\n>"
nl: .asciiz "\n"
filename: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/AshhadA.txt"
filename1: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/AnasA.txt"
filename2: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/HamzaA.txt"
filename3: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/Ass1.txt"
filename4: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/Ass2.txt"
filename5: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/Ass3.txt"
filename6: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/Announcement1.txt"
filename7: .asciiz "D:/BS-CS/Semester 3A/COAL LAB/New Folder/Chat.txt"
menu2: .asciiz "\nPress:\n1. Anas\n2. Ashhad\n3. Hamza\n\n4. Go Back\n "
menu3: .asciiz "\nPress:\n1. Muzammil\n2. Azmi\n3. Twaha\n\n4. Go Back\n "
MI: .asciiz "InValid Input, Try Again.\n"
ANAS: .asciiz "\nANAS "
ASHHAD: .asciiz "\nASHHAD "
HAMZA: .asciiz "\nHAMZA "
mark_attendence: .space 2048
mark_assignment: .space 2048
fileword: .space 2048
fileword14: .space 2048
fileword15: .space 2048
fileword16: .space 2048
attendence:  .space 2048
final:  .space 2048
assignment_write:  .space 2048
filewordattendence: .space 2048
filewordassignment: .space 2048
filewordannouncement: .space 2048
filewordmarks: .space 2048
filewordchat: .space 2048

.text
MAIN:
la $a0,welcome
li $v0,4
syscall

li $v0,5
syscall
move $t0,$v0

li $t1,1
li $t2,2

beq $t0,$t1,BookID
beq $t0,$t2,ChalkID
beq $t0,0,exit

la $a0,invalidLogin
li $v0,4
syscall

b exit

ChalkID:

la $a0,usernamemsg
li $v0,4
syscall

la $a0,username
la $a1,10
li $v0,8
syscall
move $t0,$a0


la $t2,teacherUsername1
la $t4,teacherUsername2
la $t7,teacherUsername3


li $s2,0
li $s3,0
li $s4,0
b Loop1


Loop1:

	beq $s4,10,loadfile1 
	beq $s2,10,loadfile2 
	beq $s3,10,loadfile3 

	lb $t1,($t0)	#user input username
	lb $t3,($t2)	#teacher 1
	lb $t5,($t4)	#teacher 2
	lb $s0,($t7)	#teacher 3
	
	beq $t1,$t3,triverseusername1   #cs201010
	li $s4,0
	beq $t1,$t5,triverseusername1	 #cs201011
	li $s2,0
	beq $t1,$s0,triverseusername1	#cs201012
	
	bne $t1,$t3,invalid
	bne $t1,$t5,invalid
	bne $t1,$s0,invalid
	
triverseusername1:
	
	add $t0,$t0,1
	add $t2,$t2,1
	add $s4,$s4,1
	
	add $t4,$t4,1
	add $s2,$s2,1

	add $t7,$t7,1
	add $s3,$s3,1
	
	j Loop1

loadfile1:

la $a0,passwordmsg
li $v0,4
syscall
la $a0,Password
la $a1,9
li $v0,8
syscall
move $t0,$a0

la $a0, teacherFile1 	# file name loading

 b passwordIntake 

loadfile2:

la $a0,passwordmsg
li $v0,4
syscall
la $a0,Password
la $a1,9
li $v0,8
syscall
move $t0,$a0
la $a0, teacherFile2 	# file name loading

b passwordIntake 

loadfile3:

la $a0,passwordmsg
li $v0,4
syscall
la $a0,Password
la $a1,9
li $v0,8
syscall
move $t0,$a0

la $a0, teacherFile3 	# file name loading

 b passwordIntake 

passwordIntake:


li $v0, 13	 	# open file
#la $a0, teacherFile1 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1,filepass1  	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $t2,filepass1
li $t6,0

loop5:

beq $t6,12,chalkID1	

lb $t1,($t0)	#userpass
lb $t4,($t2)	#filepass

beq $t4,$t1,triversepassword

b invalid

triversepassword:
	
	addi $t0,$t0,1
	addi $t2,$t2,1
	addi $t6,$t6,1
	
	b loop5
	

invalid:
la $a0,invalidLogin
li $v0,4
syscall
b exit

chalkID1:
la $a0, menu
li $v0, 4
syscall
li $v0,5 # taking 2 inpt
syscall
move $t0, $v0
beq $t0, 1,A   
beq $t0, 2,M 
beq $t0, 3,As
beq $t0, 4,An 
beq $t0, 5,Chat
beq $t0, 6,Logout 
la $a0, MI
li $v0, 4
syscall
j chalkID1
bookID:
la $a0, menu1
li $v0, 4
syscall
li $v0,5 # taking 2 inpt
syscall
move $t0, $v0
beq $t0, 1,AS 
beq $t0, 2,MS 
beq $t0, 3,AsS 
beq $t0, 4,AnS 
beq $t0, 5,ChatS 
beq $t0, 6,Logout 
la $a0, MI
li $v0, 4
syscall
j bookID
A:

la $a0, menu2
li $v0, 4
syscall
li $v0,5 # taking 2 inpt
syscall
move $t0, $v0
beq $t0, 1,AnasA  
beq $t0, 2,AshhadA 
beq $t0, 3,HamzaA 
beq $t0, 4,chalkID1
la $a0, MI
li $v0, 4
syscall
j A
AnasA:
li $v0, 13	 	# open file
la $a0, filename1 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall
la $a0, Attendence_msg
li $v0, 4
syscall
la $a0,mark_attendence
la $a1,9
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_attendence
    la $a2 attendence
    jal strcpy
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, filename1 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
j A
    #display a new-line
    li $a0 10
    li $v0 11
    syscall

    #exit
    jr $ra
    strcpy:

    li $t8 10 #store newline in $t8

    #loop through first string and copy to output string
   sCopyFirst:

        lb   $t0 0($a0)
        beq  $t0 $zero sCopySpace #exit loop on null byte
        beq  $t0 $t8 sCopySpace   #exit loop on new-line
        sb   $t0 0($a2)
        addi $a0 $a0 1
        addi $a2 $a2 1
        b sCopyFirst

    sCopySpace:

        li   $t0 ' '
        sb   $t0 0($a2)
        addi $a2 $a2 1 
    #loop through second string and copy to output string 
    sCopySecond:

        lb   $t0 0($a1)
        beq  $t0 $zero sDone #exit on null byte
        beq  $t0 $t8 sDone   #exit on new-line
        sb   $t0 0($a2)
        addi $a1 $a1 1
        addi $a2 $a2 1
        b sCopySecond

    sDone:

        sb $zero 0($a2) #null terminate string
        jr $ra
AshhadA:
li $v0, 13	 	# open file
la $a0, filename 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall
la $a0, Attendence_msg
li $v0, 4
syscall
la $a0,mark_attendence
la $a1,9
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_attendence
    la $a2 attendence
    jal strcpy
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, filename # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j A
    #exit
    jr $ra
HamzaA:
li $v0, 13	 	# open file
la $a0, filename2 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall
la $a0, Attendence_msg
li $v0, 4
syscall
la $a0,mark_attendence
la $a1,9
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_attendence
    la $a2 attendence
    jal strcpy
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, filename2 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j A
    #exit
    jr $ra


As:

la $a0, menu3
li $v0, 4
syscall
li $v0,5 # taking 2 inpt
syscall
move $t0, $v0
beq $t0, 1,MuzammilAs  
beq $t0, 2,AzmiAs 
beq $t0, 3,TwahaAs 
beq $t0, 4,chalkID1
la $a0, MI
li $v0, 4
syscall
j As
MuzammilAs:
li $v0, 13	 	# open file
la $a0, filename3 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword14 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall

li $v0, 4
la $a0, previous
syscall
li $v0, 4
la $a0, fileword14
syscall

la $a0, Assignment_msg
li $v0, 4
syscall
la $a0,mark_assignment
la $a1,1024
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String2
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword14
    la $a1 mark_assignment
    la $a2 attendence
    jal strcpyM
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, filename3 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j As
    #exit
    jr $ra
    strcpyM:

    li $t8 10 #store newline in $t8

    #loop through first string and copy to output string
   sCopyFirstM:

        lb   $t0 0($a0)
        beq  $t0 $zero sCopySpaceM #exit loop on null byte
        beq  $t0 $t8 sCopySpaceM   #exit loop on new-line
        sb   $t0 0($a2)
        addi $a0 $a0 1
        addi $a2 $a2 1
        b sCopyFirstM

    sCopySpaceM:

        li   $t0 ' '
        sb   $t0 0($a2)
        addi $a2 $a2 1 
    #loop through second string and copy to output string 
    sCopySecondM:

        lb   $t0 0($a1)
        beq  $t0 $zero sDone #exit on null byte
        beq  $t0 $t8 sDone   #exit on new-line
        sb   $t0 0($a2)
        addi $a1 $a1 1
        addi $a2 $a2 1
        b sCopySecondM

    sDoneM:

        sb $zero 0($a2) #null terminate string
        jr $ra
AzmiAs:
li $v0, 13	 	# open file
la $a0, filename4 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall

li $v0, 4
la $a0, previous
syscall
li $v0, 4
la $a0, fileword
syscall

la $a0, Assignment_msg
li $v0, 4
syscall
la $a0,mark_assignment
la $a1,1024
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String2
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_assignment
    la $a2 attendence
    jal strcpyM
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, filename4 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j As
    #exit
    jr $ra
TwahaAs:
li $v0, 13	 	# open file
la $a0, filename5 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall


li $v0, 4
la $a0, previous
syscall
li $v0, 4
la $a0, fileword
syscall
la $a0, Assignment_msg
li $v0, 4
syscall
la $a0,mark_assignment
la $a1,1024
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String2
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_assignment
    la $a2 attendence
    jal strcpyM
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, filename5 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j As
    #exit
    jr $ra

    
An:

li $v0, 13	 	# open file
la $a0, filename6 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall
li $v0, 4
la $a0, prompt2
syscall
la $a0,assignment_write
la $a1,1024
li $v0,8
syscall
#call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 assignment_write
    la $a2 final
    jal strcpy
    move $ra $s0

    #display the full string
    la $a0 final
    li $v0 4
    syscall
li $v0, 13 # open file
la $a0, filename6 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, final # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
j chalkID1
    #display a new-line
    li $a0 10
    li $v0 11
    syscall

    #exit
    jr $ra
Chat:

li $v0, 13	 	# open file
la $a0, filename7 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall
li $v0, 4
la $a0, prompt3
syscall
la $a0,assignment_write
la $a1,1024
li $v0,8
syscall
li $v0, 4
la $a0,nl
syscall
#call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 assignment_write
    la $a2 final
    jal strcpy
    move $ra $s0

    #display the full string
    la $a0 final
    li $v0 4
    syscall
li $v0, 13 # open file
la $a0, filename7 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, final # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
j chalkID1
    #display a new-line
    li $a0 10
    li $v0 11
    syscall

    #exit
    jr $ra

M:
##
la $a0, menu4
li $v0, 4
syscall
li $v0,5 # taking 2 inpt
syscall
move $t0, $v0
beq $t0, 1,MuzammilMs  
beq $t0, 2,AzmiMs 
beq $t0, 3,TwahaMs 
beq $t0, 4,chalkID1
la $a0, MI
li $v0, 4
syscall
j M
MuzammilMs:

li $v0, 13	 	# open file
la $a0, muzammilmarks 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall

li $v0, 4
la $a0, previousmuzammil
syscall
li $v0, 4
la $a0, fileword
syscall

la $a0, marks_msg
li $v0, 4
syscall
la $a0,mark_marks
la $a1,1024
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String3
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_marks
    la $a2 attendence
    jal strcpyM
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, muzammilmarks # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j M
    #exit
    jr $ra

AzmiMs:
li $v0, 13	 	# open file
la $a0, azmimarks 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall

li $v0, 4
la $a0, previousazmi
syscall
li $v0, 4
la $a0, fileword
syscall

la $a0, marks_msg
li $v0, 4
syscall
la $a0,mark_marks
la $a1,1024
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String3
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_marks
    la $a2 attendence
    jal strcpyM
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, azmimarks # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j M
    #exit
    jr $ra
    
    
    
    
TwahaMs:

li $v0, 13	 	# open file
la $a0, twahamarks 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword16 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall

li $v0, 4
la $a0, previoustwaha
syscall
li $v0, 4
la $a0, fileword
syscall

la $a0, marks_msg
li $v0, 4
syscall
la $a0,mark_marks
la $a1,1024
li $v0,8
syscall
#Display output lead-up
    li $v0, 4
    la $a0, String3
    syscall

    #call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 mark_marks
    la $a2 attendence
    jal strcpyM
    move $ra $s0

    #display the full string
    la $a0 attendence
    li $v0 4
    syscall
	li $v0, 13 # open file
la $a0, twahamarks # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, attendence # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
    #display a new-line
    li $a0 10
    li $v0 11
    syscall
j M
    #exit
    jr $ra

##
BookID:

la $a0,usernamemsg
li $v0,4
syscall

la $a0,username
la $a1,10
li $v0,8
syscall
move $t0,$a0


la $t2,studentUsername1
la $t4,studentUsername2
la $t7,studentUsername3


li $s2,0
li $s3,0
li $s4,0
b Loop2


Loop2:

	beq $s4,10,loadfile4 
	beq $s2,10,loadfile5 
	beq $s3,10,loadfile6 

	lb $t1,($t0)	#user input username
	lb $t3,($t2)	#student 1
	lb $t5,($t4)	#student 2
	lb $s0,($t7)	#student 3
	
	beq $t1,$t3,triverseusername2   #cs201010
	li $s4,0
	beq $t1,$t5,triverseusername2	 #cs201011
	li $s2,0
	beq $t1,$s0,triverseusername2	#cs201012
	
	bne $t1,$t3,invalid
	bne $t1,$t5,invalid
	bne $t1,$s0,invalid
	
triverseusername2:
	
	add $t0,$t0,1
	add $t2,$t2,1
	add $s4,$s4,1
	
	add $t4,$t4,1
	add $s2,$s2,1

	add $t7,$t7,1
	add $s3,$s3,1
	
	j Loop2


loadfile4:

la $a0,passwordmsg
li $v0,4
syscall
la $a0,Password
la $a1,9
li $v0,8
syscall
move $t0,$a0

la $a0, studentFile1 	# file name loading

 b passwordIntake2 

loadfile5:

la $a0,passwordmsg
li $v0,4
syscall
la $a0,Password
la $a1,9
li $v0,8
syscall
move $t0,$a0
la $a0, studentFile2 	# file name loading

b passwordIntake2

loadfile6:

la $a0,passwordmsg
li $v0,4
syscall
la $a0,Password
la $a1,9
li $v0,8
syscall
move $t0,$a0

la $a0, studentFile3 	# file name loading

 b passwordIntake2 

passwordIntake2:


li $v0, 13	 	# open file
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1,filepass7  	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $t2,filepass7
li $t6,0

loop6:

beq $t6,12,bookID1	

lb $t1,($t0)	#userpass
lb $t4,($t2)	#filepass

beq $t4,$t1,triversepassword2

b invalid

triversepassword2:
	
	addi $t0,$t0,1
	addi $t2,$t2,1
	addi $t6,$t6,1
	
	b loop6

bookID1:

la $a0,menu1
li $v0,4
syscall

li $v0,5
syscall
move $t1,$v0

li $s1,1
li $s2,2
li $s3,3
li $s4,4
li $s5,5
li $s6,6

beq $t1,$s1,AS
beq $t1,$s2,MS
beq $t1,$s3,AsS
beq $t1,$s4,AnS
beq $t1,$s5,ChatS
beq $t1,$s6,MAIN

b  invalid


AS:			#attendenceView
la $a0,ASHHAD
li $v0,4
syscall
la $a0,StudentAttendence
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, filename	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, filewordattendence	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall
la $a0,filewordattendence
li $v0,4
syscall
la $a0,nl
li $v0,4
syscall
#####


la $a0,ANAS
li $v0,4
syscall
la $a0,StudentAttendence
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, filename1 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, filewordattendence	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall
la $a0,filewordattendence
li $v0,4
syscall
la $a0,nl
li $v0,4
syscall
#####
la $a0,HAMZA
li $v0,4
syscall
la $a0,StudentAttendence
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, filename2	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, filewordattendence	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall
la $a0,filewordattendence
li $v0,4
syscall
la $a0,nl
li $v0,4
syscall
b bookID1

MS:

##############
la $a0,menu4
li $v0,4
syscall

li $v0,5
syscall
move $t1,$v0


beq $t1,1,MuzammilMarks
beq $t1,2,AzmiMarks
beq $t1,3,TwahaMarks
beq $t1,4,bookID1

b  invalid

MuzammilMarks:
la $a0,String3
li $v0,4
syscall

la $a0,SirMuzammil
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, muzammilmarks 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall

la $a0,fileword
li $v0,4
syscall

la $a0,nl
li $v0,4
syscall

b MS


AzmiMarks:
la $a0,String3
li $v0,4
syscall

la $a0,SirAzmi
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, azmimarks 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall

la $a0,fileword
li $v0,4
syscall

la $a0,nl
li $v0,4
syscall

b MS


TwahaMarks:
la $a0,String3
li $v0,4
syscall

la $a0,SirTwaha
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, twahamarks 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall

la $a0,fileword
li $v0,4
syscall

la $a0,nl
li $v0,4
syscall

b MS



AsS:
la $a0,SirMuzammil
li $v0,4
syscall
la $a0,StudentAssignment
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, filename3	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, filewordassignment	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall
la $a0,filewordassignment
li $v0,4
syscall
la $a0,nl
li $v0,4
syscall
#######

la $a0,SirAzmi
li $v0,4
syscall
la $a0,StudentAssignment
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, filename4	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, filewordassignment	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall
la $a0,filewordassignment
li $v0,4
syscall
la $a0,nl
li $v0,4
syscall
#######

la $a0,SirTwaha
li $v0,4
syscall
la $a0,StudentAssignment
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, filename5	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, filewordassignment	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall
la $a0,filewordassignment
li $v0,4
syscall
la $a0,nl
li $v0,4
syscall


b bookID1


AnS:

la $a0,StudentAnnouncement
li $v0,4
syscall

li $v0, 13	 	# open file
la $a0, filename6	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, filewordannouncement	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall


li $v0, 16 		# close file
move $a0, $s0
syscall

la $a0,nl
li $v0,4
syscall
la $a0,filewordannouncement
li $v0,4
syscall
la $a0,nl
li $v0,4
syscall
b bookID1

ChatS:

li $v0, 13	 	# open file
la $a0, filename7 	# file name loading
li $a1, 0 		# reading file
syscall
move $s0, $v0 		# file descriptor
li $v0, 14 		# read from file
move $a0, $s0 		# file descriptor
la $a1, fileword 	# buffer holding string of whole file
li $a2, 1024 		# size of buffer
syscall
li $v0, 16 		# close file
move $a0, $s0
syscall
li $v0, 4
la $a0, prompt3
syscall
la $a0,chat_w
la $a1,1024
li $v0,8
syscall
#call the strcpy function
    move $s0 $ra
    la $a0 fileword
    la $a1 chat_w
    la $a2 final
    jal strcpy
    move $ra $s0

    #display the full string
    la $a0 final
    li $v0 4
    syscall
li $v0, 13 # open file
la $a0, filename7 # loading file name
li $a1, 1 # mode of writing in file
syscall
move $s0, $v0 # file descriptor
li $v0, 15 # write in file
move $a0, $s0 #file descriptor
la $a1, final # word u want to print
li $a2, 1024 # size of word
syscall
li $v0, 16 # close file
move $a0, $s0 # file descriptor
syscall
j bookID1
    #display a new-line
    li $a0 10
    li $v0 11
    syscall

    #exit
    jr $ra
    
   
Logout:

b MAIN

exit:

li $v0,10
syscall
