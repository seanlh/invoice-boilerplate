TEX = pandoc
src = template.tex details.yml
FLAGS = --pdf-engine=xelatex --from=markdown

output.pdf : $(src)
	$(TEX) $(filter-out $<,$^ ) -o $@ --template=$< $(FLAGS)

.PHONY: clean
clean :
	rm -f output.pdf
