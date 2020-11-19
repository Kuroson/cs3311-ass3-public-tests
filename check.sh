echo "Removing diff/ directory"
rm -rf diff

if [ ! -d "out" ]
then
    echo "Creating out/ directory"
    mkdir "out"
fi

if [ ! -d "diff" ]
then
    echo "Creating diff/ directory"
    mkdir "diff"
fi

for t in tests/*.sh
do
    name=$(basename "$t" .sh)
    sh $t > out/$name.txt
    
    if ! diff "out/$name.txt" "tests/$name.txt" > /dev/null
    then
        echo "Expected and observed differ for $name"
        diff "out/$name.txt" "tests/$name.txt" > diff/$name.txt
    fi
done