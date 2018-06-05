REM Compile the source files into class files
javac -cp . src/firework/*.java src/meridor/*.java -d bin/

REM Create an executable jar file
jar cmf IOM.mf IOM.jar MeriImages -C bin .

PAUSE
