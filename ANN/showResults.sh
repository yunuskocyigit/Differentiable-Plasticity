#!/bin/bash

if [[ ! -d "./results" ]]; then
  exit 1
fi

cd results
echo "classic"
# For each result: show top accuracy
for res in *acc_classic*.txt; do
  echo ""$(echo "$res" | cut -d'_' -f 2)" "$(echo "$res" | cut -d'_' -f 4)" $(cat "$res" | sort -n | tail -1)"
done

echo "plastic"
# For each result: show top accuracy
for res in *acc_plastic*.txt; do
  echo ""$(echo "$res" | cut -d'_' -f 2)" "$(echo "$res" | cut -d'_' -f 4)" $(cat "$res" | sort -n | tail -1)"
done

exit 0
echo ""
echo ""
echo ""

echo "classic"
# For each result: show epochs until first change
for res in *acc_classic*.txt; do
  echo "n="$(echo "$res" | cut -d'_' -f 2)" l="$(echo "$res" | cut -d'_' -f 4)" $(sort $res | uniq -cd | head -n 1 | sed 's/  */ /g')"
done

echo "plastic"
for res in *acc_plastic*.txt; do
  echo "n="$(echo "$res" | cut -d'_' -f 2)" l="$(echo "$res" | cut -d'_' -f 4)" $(sort $res | uniq -cd | head -n 1 | sed 's/  */ /g')"
  #echo "$(sort $res | uniq -cd | head -n 1 | sed 's/  */ /g')"
done
