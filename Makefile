GL_INCLUDE = /mingw64/include/
GL_LIB = /usr/X11R6/lib

hello-gl.exe: hello-gl.o util.o
	gcc -o hello-gl.exe $^ -lopengl32 -lglut32 -lglew32

hello-gl-dummy.exe: hello-gl-dummy.o
	gcc -o hello-gl-dummy.exe $^ -lopengl32 -lglut32 -lglew32

.c.o:
	gcc -c -o $@ $< -I$(GL_INCLUDE)

clean:
	rm -f hello-gl.exe hello-gl-dummy.exe hello-gl.o util.o hello-gl-dummy.o
