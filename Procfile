web: gunicorn BlogProject.wsgi --log-file  - --log-level debug
python manage.py migrate
gunicorn app:application --preload -b 0.0.0.0:5000 
