#!/bin/bash
BASE_URL="https://github.com/OpenJEVis"
MODULES=(
	"JEAPI"
	"JECommons"
	"JEAPI-SQL"
	"JEDataCollector"
	"JEApplication"
	"JEConfig"
	"JEWebservice"
	)

for module in ${MODULES[@]};
do
	git -C "$module" remote add upstream "${BASE_URL}/${module}.git"
done

