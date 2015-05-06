#!/bin/bash
BASE_URL="git@github.com:AIT-JEVis"
MODULES=(
	"JEAPI"
	"JECommons"
	"JEAPI-SQL"
	"JEDataCollector"
	"JEApplication"
	"JEConfig"
	"JEWebService"
	)

for module in ${MODULES[@]};
do
	git submodule add "${BASE_URL}/${module}.git"
done

