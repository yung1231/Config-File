# Vscode c/c++ Configuration
## MinGW
Download [MinGW](https://sourceforge.net/projects/mingw/)

![](https://i.imgur.com/gmTK92e.png)

Select the resources to be installed

![](https://i.imgur.com/a3erufg.png)

![](https://i.imgur.com/5fP2e9t.png)

Find `mingw32-gcc-g++` and check the box, then click `Apply Changes`.

![](https://i.imgur.com/4IEpp4q.png)

Add `D:\MinGW\bin` to the environment variables

Check if MinGW is installed successfully

```bash
gcc --version
g++ --version
gdb --version
```

## Configure the C/C++ environment
![](https://i.imgur.com/Ol7YCM0.png)

![](https://imgur.com/S83O9XZ.png)

Press `Ctrl+Shift+p`, then select `C/C++: Edit Configurations (UI)`. Then select the `Compiler path`、`IntelliSense mode`、`C standard` and `C++ standard` to use.

> An `.vscode` folder will be automatically generated, containing `c_cpp_properties.json`.

![](https://i.imgur.com/MbRXOpp.png)

Create a folder, download the four files, and create a `.vscode` folder inside. The code written afterwards should be placed under that folder

`Ctrl+Shift+B` can be compiled

> `.vscode` must be in the same folder as the file being compiled or in any upper-level directory

### Test
```c
#include <stdio.h>
#include <stdlib.h>

int main(){
  printf("Hello World!\n");

  system("pause");
  return 0;
}
```

```cpp
#include<iostream>
using namespace std;

int main(){
  cout<<"Hello World\n";

  system("pause");
  return 0;
}
```

```
Terminal -> Run Build Task

Run -> Run Without Debugging
```

> The current configuration is for C. If you want to compile C++, you need to replace the parts related to GCC in both c_cpp_properties.json and tasks.json.

## Debug
![](https://i.imgur.com/aemHyq9.png)

> The path cannot have a Chinese name