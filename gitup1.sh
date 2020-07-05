path=` cat /home/$(whoami)/unixproject/select.txt `
cd $path
git add .
git commit -m "Add"
git push origin master
