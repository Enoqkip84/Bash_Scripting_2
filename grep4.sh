#!/bin/bash

grep "404" sampledata.txt | grep "506$" | wc -l

exit 0
