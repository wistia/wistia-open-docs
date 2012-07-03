First, download the special mplayer/mencoder executables from: http://prime.wistia.com/deliveries/ee731721b3ecf9668b5e21bf0d45a024680016b5/mplayer.zip

Here is an example command to convert your GoToMeeting files to MPG:

mencoder "your-gotomeeting-file.wmv" -ovc lavc -lavcopts vcodec=mpeg1video:vbitrate=1500 -oac mp3lame -ofps 30 -o your-output-file.mpg

Once you have this unzipped, the steps to use it are:
Put your GoToMeeting file in the directory where you unzipped mplayer
In the command above, replace your-gotomeeting-file.wmv and your-output-file.mpg with the names of your files.
Execute the command
You should then be able to upload the resulting .MPG file directly to Wistia and have it convert.
