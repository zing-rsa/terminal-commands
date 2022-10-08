param (
    [Parameter(Mandatory = $true, Position=1)]$i = "default",
    [Parameter(Mandatory = $true, Position=2)]$o = "default"
)

# downres to 720px width. height determined by original aspect ratio
ffmpeg -i $i -filter:v scale=720:-1 $o
