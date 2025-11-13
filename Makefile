SRC     := main.typ
TARGET  := main.pdf
ROOT    := .

all:
	typst c --root $(ROOT) $(SRC) $(TARGET)

watch:
	typst w --root $(ROOT) $(SRC) $(TARGET)

clean:
	find . -name "*.pdf"  | xargs rm -f


.PHONY: all clean

