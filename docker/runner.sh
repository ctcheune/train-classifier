#!/bin/bash

printf "%b" "${OKB}Starting training job${NC}\n"
cd "$MODEL" || exit 1
python3 train.py
printf "%b" "${OKG} ✓ ${NC}Training completed successfully\n"

printf "%b" "${OKB}Compiling artefacts in ${OKG}${OUTPUT}${OKB} to ${OKG}/tmp/${NC}"
tar -cvzf /tmp/"$OUTPUT".gz "$OUTPUT"
printf "%b" "${OKG} ✓ ${NC}artefacts zipped\n"