name:=piano
source:=$(name).tal
rom:=$(name).rom

run: $(rom)
	uxnemu $(rom)

$(rom): $(source) format
	drifblim $(source) $@

format: $(source)
	uxnfor $(source)

validate: $(source)
	uxnbal $(source)

lint: $(source)
	uxnlin $(source)

left:
	(left $(source) &)

