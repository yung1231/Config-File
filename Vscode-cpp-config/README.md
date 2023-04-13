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

## Plug-in
![](https://i.imgur.com/Ol7YCM0.png)

## Setting up folders
![](https://i.imgur.com/MbRXOpp.png)

Create a folder, download the four files, and create a `.vscode` folder inside. The code written afterwards should be placed under that folder

`Ctrl+Shift+B` can be compiled

> `.vscode` must be in the same folder as the file being compiled or in any upper-level directory

### Test
```cpp
#include<iostream>
using namespace std;

int main(){
  cout<<"Hello World\n";

  return 0;
}
```

## Debug
![](https://i.imgur.com/aemHyq9.png)

> The path cannot have a Chinese name