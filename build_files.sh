echo -m pip install -r requirements.txt

echo
python3 manage.py makemigrations --noinput
python3 manage.py migrate --noinput

echo
python3 manage.py collectstatic --noinput