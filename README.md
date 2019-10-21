# Set Date from EXIF

A simple *Automator.app* *workflow* Quick Action to change the **Date Created** attribute of <u>image</u> files to the creation date listed in the **EXIF**.

This allows images to be sorted by actual *time taken* in *Finder*, since it still cannot show **EXIF** data as columns.

## Compatibility

Tested and confirmed working:

- MacOS Catalina 10.15

Please let me know your system version if it doesn't work for you.

## Installation

1. *Clone or download*

2. Double click on *Set Date from EXIF.workflow*

3. Confirm install
![](./ScreenShots/ScreenShot01.png){:height="5%" width="5%"}

## Usage

1. Select files and folders in *Finder*

   [^All files in selected folders will be searched and changed recursively; Has no effect on non-image files]: 

2. Right Click or Control+Click

3. Quick Actions > Set Date from EXIF
![](./ScreenShots/ScreenShot02.png)

## Notes

The actual work is done in a shell script, which takes *selected files and folders* in *Finder* as input.

This is my first time actually writing a shell script, so definitely prone to errors and not following best-practices; welcome to any critism/suggestions on improvements.
