sql_file = open("commands.sql")
sql_as_string = sql_file.read()

question_file = open("questions.txt")
questionList = list(question_file.read().split("\n"))

for i in range(len(questionList)):
    questionList[i]=questionList[i].replace("_","\\_")

commandList = list(sql_as_string.split("$"))
for i in range(len(commandList)):
    commandList[i]=commandList[i].lstrip("\n")
itemCount = 1
for command in commandList[:-1]:
    print("\\item{",end="")
    print("\\textbf{", end="")
    print(questionList[itemCount-1],end="")
    print("}")
    print("\\\\")
    print("\\\\")
    print("\\textbf{Command - }")
    print("\\begin{"+"lstlisting}[language=SQL]")
    print(command)
    print("\\end{"+"lstlisting}")
    print("Result-")
    print("\\begin{"+"figure"+"}[h]")
    print("\\advance\\leftskip 0.8cm")
    print("\\includegraphics[scale=0.4]{figures/s"+str(itemCount)+".png}")
    print("\\end{figure}}")
    itemCount+=1

    