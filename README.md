# MetinOS

I am doing this os for learning assembly and as a hobby


### **requirement**

+ nasm	(assembler)
+ qemu	(for emulating)
+ bochs (for debugging)
+ some kind of hex editor(i use **Ghex** and **bochs** hex editor)


## Getting Started

```shell
$ git clone https://github.com/Metincloup/MetinOS.git
$ cd MetinOS
$ ./build.sh
```
## Create iso

```shell
$ dd if=boot.bin of=MetinOS.iso bs=512
```

	**for debug OS instead of using ./build.sh use ./debug.sh**
	
```shell
$ ./debug.sh
```

## Changes


### **2023-06-24**
---
+	Added KeyBoard input 
+	Added clearScreen Function
+	Added Cursor control functions

### **2023-06-20**
---
+	Added Print Screen function 
+	Added debugging with bochs emulator
