# USER MODELS

it is found in the classmodels.User.

User objects have the following fields:

1. username
2. first_name
3. last_name
4. email
5. password
6. groups
7. user_permissions
8. is_staff
9. is_active
10. is_superuser
11. last_login
12. date_joined

to import this model you import it from django.contrib.auth.models:

`from django.contrib.auth.models import User`.