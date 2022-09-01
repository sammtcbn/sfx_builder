sfx_builder is an utility to generate a windows SFX (Self-extracting) installer based on 7-Zip dll.
It is cable of running batch file to execute commands you want after extracting.

Requirement:
* 7-Zip for Windows installed

Generate Steps:
1. Copy files into archives folder
2. Write your commands in run.bat
3. Modify config.txt to edit your Title and Prompt message.
4. Change targetName in build_fsx.bat to edit your target file name.
5. Run build_sfx.bat

Reference:
* 7-Zip , https://www.7-zip.org/
* 7zSD.sfx copy from LZMA SDK 21.03 beta , https://www.7-zip.org/sdk.html
