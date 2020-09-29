param (
    [string]$n = "default"
)

mkdir $n
cd $n
git init 
New-Item README.md -ItemType File
git add .
git commit -m "Init repo" 
git remote add origin https://www.github.com/Zingers-Za/$n

