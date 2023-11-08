## JNI (Java Native Interface) - Como executar Código C com Java
[Tutorial](https://www.youtube.com/watch?v=Ahcnr_qdCDQ)

- Criada a classe `Calculadora.java` com o método nativo: `public native int soma(int a, int b)`
- Executado o comando `javac Calculadora.java -h ../../../c` na pasta `src/main/java` que possui a classe `Calculadora.java` e o método `native` para geração do header;
- executar o comando `gcc -o libcalculadora.dll -shared -IC:\sdkman\candidates\java\17-open\include -IC:\sdkman\candidates\java\17-open\include\win32 c/Calculadora.c` então o arquivo `libcalculadora.dll` será criado. (ps: É necessário iniciar o nome do arquivo com `lib`)
- Os arquivos `jni.h` e `jni_md.h` estão na pasta do jdk instalado no dispositivo.
**[BUGADO] - Executar o jar `java -Djava.library.path=. build\classes\java\main\Calculadora`


java -Djava.library.path=. -jar build\libs\hw-jni.jar
g++ -shared -o native.dll libcalculadora.o -Wl,--add-stdcall-alias