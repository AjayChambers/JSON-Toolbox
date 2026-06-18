# Inline Documentation Templates

There is an infinite amount of ways a project can potentially be documented. The specified format used is
important, however, it is more important that the specification is followed consistently. Consistency
leads to intuitiveness, which inturn leads to understanding and the usability of the project being
documented. It goes without saying that JSON Toolbox is no exception, which is why this document exists.
This file contains the format used within the JSON Toolbox project. It covers how to document each file,
as well as classes, functions, and more.

_**The index below is provided as a means of navigating this document. If you have any suggestions, find
that something is missing, or if a correction is needed, please let us know by opening a new issue.**_

<br>

## INDEX

### #1 • FILE HEADER COMMENTS
  - ##### 1.1 − C++ File Header
  - ##### 1.2 − CMake Script/Module Header
  - ##### 1.3 − CMakeLists.txt File Header
  - ##### 1.4 − PowerShell File Header
  - ##### 1.5 − Markdown/Plain-text Header

<br>

### #2 • FUNCTION COMMENTS
  - ##### 1.1 − C++ Function Comment
  - ##### 1.2 − CMake Script Function
  - ##### 1.3 −

---

<br>
<br>




## C++ File Header Comment
###### For file extensions: `.cxx` & `.hxx`

```
/** ***********************************************************************
 *
 * JSON Toolbox: JSON Analyzer, Parser & Formatter
 * Copyright (C) 2026, Andrew Jay Chambers Jr.
 *
 *    This program is free software: you can redistribute it and/or modify
 *    it under the terms of the GNU General Public License as published by
 *    the Free Software Foundation, either version 3 of the License, or
 *    (at your option) any later version.
 *
 *    This program is distributed in the hope that it will be useful, but
 *    WITHOUT ANY WARRANTY; without even the implied warranty of
 *    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 *    General Public License for more details.
 *
 *    You should have received a copy of the GNU General Public License
 *    with this program. If you did not receive a copy, visit the following
 *    link <https://www.gnu.org/licenses/>.
 *
 *//** ********************************************************************
 *
 *  FILENAME:     "This_Files_Name.(cxx|hxx)"
 *  DIRECTORY:    ""
 *  AUTHOR:       "Andrew Chambers [Ajay.Chambers@outlook.com]"
 *  REPOSITORY:   "https://GitHub.com/GitHub_UID/{Project_Name}
 *  LICENSE:      "GNU General Public License v3.0 (GPL v3.0)"
 *  DESCRIPTION:  "Insert a description for this file here..."
 *
 *************************************************************************/
```

---

<br><br>




### CMAKE: Script & Module File Header
- **File Type:** `.cmake`
- **Line Length:** 65-chars

**! PLEASE NOTE ! --** "This template is **NOT** for using with _`CMakeLists.txt`_  files, it is for CMake modules and scripts whose names are appended with the `.cmake` file extension and not the `.txt` file extension. If your looking for the _'CMakeLists.txt file documentation header'_ see the template below this one."

```
###########################################################################
# JSON Toolbox: JSON Analyzer, Parser & Formatter
#
# Copyright (C) 2026 "ANDREW J CHAMBERS JR"
#
# This program is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of
# the License, or at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public
# License along with this program. If you did not receive a copy
# visit <"https://www.gnu.org/licenses/">
#
###########################################################################
#
# FILE: ""
# LIC:  ""
# AUTH: ""
# REPO: ""
# DESC: ""
# FILE DESCRIPTION:
#   "Long descriptions are formatted like you see here. Make sure
#   the multi-line description indents each line 2-spaces. Short
#   descriptions use the `# DESC:` format instead."
###########################################################################
```

---

<br><br>




### CMAKE: CMakeLists.txt
- **File Type:** `CMakeLists.txt`
- **Line Length:** 65-chars


```
#================================================================
# JSON Toolbox, JSON Analyzer, Parser & Formatter
# Copyright (C) 2026 Andrew Jay Chambers
#
#   Licensed under the GNU General Public License v3.0. To view
#   a copy of the license (@see "LICENSE.md") in this project's
#   root directory or visit <"https://www.gnu.org/licenses/">.
#
# REPOSITORY: "https://GitHub.com/AjayChambers/JSON Toolbox"
# ISSUE/BUG:  "https://GitHub.com/AjayChambers/JSON Toolbox/issues"
# CONTACT:    "Ajay.Chambers@Outlook.com"
#================================================================
# FILE'S META DETAILS
#   FILENAME:  "base_dir/filename.file_ext"
#   AUTHOR(s): "List names of all contributors"
#   FILE DESC:
#     "The description can start here, or if its more than one
#     line in length it can start on this line instead"
#================================================================
```

---

<br><br>




### CMAKE: Inline Function Documentation
  - ###### For file extensions: `.cmake`
  - ###### Header Line Length = 65-chars
```
#################################################################
# FUNCTION: ""
# ARGUMENTS:
#   * ""
#   * ""
#   * ""
# DESCRIPTION: ""
#################################################################
```JSON Toolbox is no exception. The inline doc headers
provide important copyright & licensing information, they provide info about where bugs should be
reported, and they give contributors credit on an individual file basis.

Below you will find excepts with templates that expalain how to properly add inline documentation
comments to the JSON Toolbox project files in a way that is appropriate, intuitive, and consistent.

<br>

## INDEX

### #1 • FILE HEADER COMMENTS
  - ##### 1.1 − C++ File Header
  - ##### 1.2 − CMake Script/Module Header
  - ##### 1.3 − CMakeLists.txt File Header
  - ##### 1.4 − PowerShell File Header
  - ##### 1.5 − Markdown/Plain-text Header

<br>

### #2 • FUNCTION COMMENTS
  - ##### 1.1 − C++ Function Comment
  - ##### 1.2 − CMake Script Function
  - ##### 1.3 −

---

<br>
<br>




## C++ File Header Comment
###### For file extensions: `.cxx` & `.hxx`

```
/**
 *********************************************************************
 *  JSON Toolbox: JSON Analyzer, Parser & Formatter
 *  COPYRIGHT (C) 2026 ANDREW JAY CHAMBERS
 *
 *     This program is free software: you can redistribute it and/or
 *     modify it under the terms of the GNU General Public License as
 *     published by the Free Software Foundation, either version 3 of
 *     the License, or (at your option) any later version.
 *
 *     This program is distributed in the hope that it will be useful,
 *     but WITHOUT ANY WARRANTY; without even the implied warranty of
 *     MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *     GNU General Public License for more details.
 *
 *     You should have received a copy of the GNU General Public
 *     License with this program. If you did not recieve a copy,
 *     see <https://www.gnu.org/licenses/>.
 *
 **//*****************************************************************
 *
 *  FILENAME:     "This_Files_Name.(cxx|hxx)"
 *  DIRECTORY:    ""
 *  AUTHOR:       "Andrew Chambers [Ajay.Chambers@outlook.com]"
 *  REPOSITORY:   "https://GitHub.com/GitHub_UID/{Project_Name}
 *  LICENSE:      "GNU General Public License v3.0 (GPL v3.0)"
 *  DESCRIPTION:  "Insert a description for this file here..."
 *
 *********************************************************************/
```

---

<br><br>




### CMAKE: Script & Module File Header
- **File Type:** `.cmake`
- **Line Length:** 65-chars

**! PLEASE NOTE ! --** "This template is **NOT** for using with _`CMakeLists.txt`_  files, it is for CMake modules and scripts whose names are appended with the `.cmake` file extension and not the `.txt` file extension. If your looking for the _'CMakeLists.txt file documentation header'_ see the template below this one."

```
#################################################################
# JSON Toolbox: JSON Analyzer, Parser & Formatter
#
# Copyright (C) 2026 "ANDREW J CHAMBERS JR"
#
# This program is free software: you can redistribute it and/or
# modify it under the terms of the GNU General Public License as
# published by the Free Software Foundation, either version 3 of
# the License, or at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public
# License along with this program. If you did not receive a copy
# visit <"https://www.gnu.org/licenses/">
#
#################################################################
#
# FILE: ""
# LIC:  ""
# AUTH: ""
# REPO: ""
# DESC: ""
# FILE DESCRIPTION:
#   "Long descriptions are formatted like you see here. Make sure
#   the multi-line description indents each line 2-spaces. Short
#   descriptions use the `# DESC:` format instead."
#################################################################
```

---

<br><br>




### CMAKE: CMakeLists.txt
- **File Type:** `CMakeLists.txt`
- **Line Length:** 65-chars




```

#================================================================
# JSON Toolbox, JSON Analyzer, Parser & Formatter
# Copyright (C) 2026 Andrew Jay Chambers
#
#   Licensed under the GNU General Public License v3.0. To view
#   a copy of the license (@see "LICENSE.md") in this project's
#   root directory or visit <"https://www.gnu.org/licenses/">.
#
# REPOSITORY: "https://GitHub.com/AjayChambers/JSON Toolbox"
# ISSUE/BUG:  "https://GitHub.com/AjayChambers/JSON Toolbox/issues"
# CONTACT:    "Ajay.Chambers@Outlook.com"
#================================================================
# FILE'S META DETAILS
#   FILENAME:  "base_dir/filename.file_ext"
#   AUTHOR(s): "List names of all contributors"
#   FILE DESC:
#     "The description can start here, or if its more than one
#     line in length it can start on this line instead"
#================================================================
```

---

<br><br>


### CMAKE: Inline Function Documentation
  - ###### For file extensions: `.cmake`
  - ###### Header Line Length = 65-chars
```
#################################################################
# FUNCTION: ""
# ARGUMENTS:
#   * ""
#   * ""
#   * ""
# DESCRIPTION: ""
#################################################################
```