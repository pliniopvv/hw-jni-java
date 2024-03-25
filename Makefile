


all:
	gcc -o c/calculadora.dll -shared -IC:\sdkman\candidates\java\current\include -IC:\sdkman\candidates\java\current\include\win32 c/Calculadora.c
	cd java && javac Calculadora.java
	# cd java && java -Djava.library.path="../c" Calculadora && cd ..

clean:
	del c\Calculadora.dll
	del java\Calculadora.class