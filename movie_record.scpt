(*********************************************
Record a Single `QuickTime` Movie
Args:
    1. name: The name of the movie.
    2. seconds: The length of the movie you want to record in seconds.
Usage:
    > osascript movie_record.scpt 'name.mov' 5
    > osascript movie_record.scpt <file_name> <seconds>
**********************************************)
on run argv
    set movieName to item 1 of argv
    set delaySeconds to item 2 of argv
    set filePath to ((path to me as text) & "::") & movieName
    set f to a reference to file filePath
    tell application "QuickTime Player"
        --activate
        set newMovieRecording to new movie recording
        tell newMovieRecording
            start
            delay delaySeconds
            pause
            save newMovieRecording in f
            stop
            close newMovieRecording
        end tell
    end tell
end run

