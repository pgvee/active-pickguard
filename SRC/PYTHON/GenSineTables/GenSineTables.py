import math;
import matplotlib.pyplot as plt

FileOut = open("./SineTable.c","w+");
FileOut.write("const SIGNED_WORD Sine_15_0 [256] = {");

for x in range(0,256):
    
      
    if(x%16 == 00 and x!=0):
        FileOut.write("\n\t\t\t\t\t\t\t\t\t");
    FileOut.write(str(round(32767 * math.sin((x/256.0) * 2 * math.pi)).__trunc__()));
    if(x==255):
        FileOut.write(" };");
    else:
        FileOut.write(",");


FileOut.close();



plt.plot([1,2,3,4])
plt.ylabel('some numbers')
plt.show()