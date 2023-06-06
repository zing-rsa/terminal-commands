# custom-terminal-commands

A few powershell/bat scripts I use to make life easier


### gt
A script that allows me to create aliases for locations in my filesystem I use frequently and 'goto' them quickly
```
gt projects
gt -ls
```

### rmMerged
Removes all the merged local branches in a git repo its run inside. 
```
cd myRepo
rmMerged
```

### muleBuild
Alias to run a maven script which builds MuleSoft applications
```
cd my-mule-project
muleBuild
```

### createRepo
Accepts a name and creates a repo with an initial commit, assigns to a github remote with the same name.
```
createRepo myRepo
```

### downres
Accepts the name of a .mp4 video as well as an output name and downreses the input using ffmpeg
```
cd videos
downres myvideo.mp4 myvideo_small.mp4
```

### removeGuids
Removes any guids that might be present in the filenames that appear in the directory it's run inside. 
