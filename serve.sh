#!/bin/bash

# Start the Jekyll server
bundle exec jekyll serve --source docs --incremental

# Wait a couple seconds to give the server time to start
sleep 2

# Open default browser to localhost
URL="http://localhost:4000"

# Check OS and open browser
if [[ "$OSTYPE" == "linux-gnu"* ]]; then
    xdg-open "$URL"
elif [[ "$OSTYPE" == "darwin"* ]]; then
    open "$URL"
else
    echo "Unsupported OS. Please open $URL manually."
fi

