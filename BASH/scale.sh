#!/bin/bash
echo "Insert Dose"
read dos
echo "Insert BM 1"
read bm1
sleep 1
echo "Insert BM 2"
read bm2
sleep 1
echo "Insert BM 3"
read bm3
sleep 1
echo "BMs Values Are "
echo ">>>>>>>>>>>>>>"
echo "BM 1 >>>> " $bm1
echo "BM 2 >>>> " $bm2
echo "BM 3 >>>> " $bm3
echo "####CALCULATION IN PROGRESS###"
sleep 2
echo "###Final Results###"
echo $((dos*bm1/100)) "Units For BM 1"
sleep 1
echo $((dos*bm2/100)) "Units For BM 2" 
sleep 1
echo $((dos*bm3/100)) "Units For BM 3"

