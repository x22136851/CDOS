# #!/usr/bin/bash

# echo "Pull Finished"
# sudo systemctl daemon-reload
# sudo systemctl restart nginx



##########changes#########

#!/bin/bash
# Create a virtual environment and activate it
virtualenv venv
source venv/bin/activate

# Install the Flask application's dependencies


# Start the Flask application
nohup python3 /var/www/html/python3 manage.py runserver 0.0.0.0:8000.py > /dev/null 2>&1 &
