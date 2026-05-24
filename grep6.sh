#!/bin/bash

grep "404" sampledata.txt | grep "506$" > 404messages.txt 

exit 0