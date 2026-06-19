# Build the specification HTML/TXT from the xml2rfc source.
# Requires: xml2rfc  (pip install xml2rfc)

SPEC = openid-cross-federation-trust-marks-1_0

.PHONY: all html txt clean

all: html txt

html: $(SPEC).html
txt:  $(SPEC).txt

$(SPEC).html: $(SPEC).xml
	xml2rfc --html $< --out $@

$(SPEC).txt: $(SPEC).xml
	xml2rfc --text $< --out $@

clean:
	rm -f $(SPEC).html $(SPEC).txt
