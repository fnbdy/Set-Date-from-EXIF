# Set Date from EXIF

A simple *Automator.app* *workflow* Quick Action to change the **Date Created** attribute of <u>image</u> files to the creation date listed in the **EXIF**.

This allows images to be sorted by actual *time taken* in *Finder*, since it still cannot show **EXIF** data as columns.

## Compatibility

Tested and confirmed working:

- MacOS Catalina 10.15

Please let me know your system version if it doesn't work for you.

## Installation

1. Download the latest release from [here](https://github.com/Imagnobody/Set-Date-from-EXIF/releases/download/v0.1/Set.Date.from.EXIF.workflow.zip).

2. Unzip file.

3. Double click on *Set Date from EXIF.workflow*

4. Confirm install
![ScreenShot01](./ScreenShots/ScreenShot01.png){:height="5%" width="5%"}

## Usage

1. Select files and folders in *Finder*

    (All files in selected folders will be searched and changed recursively; Has no effect on non-image files)

2. Right Click or Control+Click

3. Quick Actions > Set Date from EXIF
![ScreenShot02](./ScreenShots/ScreenShot02.png)

## Notes

The actual work is done in a [shell script](https://github.com/Imagnobody/Set-Date-from-EXIF/blob/master/src/script.sh), which takes *selected files and folders* in *Finder* as input.

This is my first time actually writing a shell script, so definitely prone to errors and not following best-practices; welcome to any critism/suggestions on improvements.
