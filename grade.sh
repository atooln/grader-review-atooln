CPATH='.:lib/hamcrest-core-1.3.jar:lib/junit-4.13.2.jar'

rm -rf student-submission
git clone $1 student-submission
echo 'Finished cloning'
cd student-submission

if [[ -e ListExamples.java ]]
    then echo "ListExamples found"
else
    echo "ListExamples missing" >&2
    exit 1
fi
cd ..
cp student-submission/ListExamples.java ./
javac -cp $CPATH *.java
java -cp $CPATH org.junit.runner.JUnitCore TestListExamples

