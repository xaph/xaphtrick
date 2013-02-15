#!/bin/bash
find . -name "tcdm*.gz" -exec zgrep -Hn "text_to_search" \{\} \;
