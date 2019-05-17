SOURCE_DIR = source

# Find source fragments
srcfiles := $(wildcard $(SOURCE_DIR)/*/*.txt)

htmlfiles := $(patsubst %.txt, %.html, $(srcfiles))

# Don't clean certain files
cleanfiles := $(filter-out $(wildcard $(SOURCE_DIR)/html-blocks/*.html) $(wildcard $(SOURCE_DIR)/metadata/*.html) $(wildcard $(SOURCE_DIR)/links/*.html) $(wildcard $(SOURCE_DIR)/variables/*.html)  $(wildcard $(SOURCE_DIR)/transclusion/*.html), $(wildcard $(SOURCE_DIR)/*/*.html))

.PHONY : release
release: index.txt
	cat templates/header.txt > index.html
# Transclude only -- don't process
	multimarkdown -s -t mmd index.txt > index-body.html
	cat index-body.html >> index.html
	rm index.txt
	rm index-body.html

# Build HTML fragments from source fragments
%.html: %.txt
	multimarkdown -b -s $*.txt

# Build final source file
index.txt: $(htmlfiles)
	scripts/make_index $(SOURCE_DIR)

.PHONY: clean
clean: 
	rm $(cleanfiles)
	rm index.html
	rm index.txt
	rm index-body.html
