# accounts/views.py
import json
from django.contrib.auth.models import User
# from django.contrib.auth import authenticate

from django.contrib.auth.forms import UserCreationForm
from django.http import HttpResponse, JsonResponse
from django.shortcuts import render, redirect
from django.contrib.auth import login, logout, authenticate

# https://docs.djangoproject.com/en/4.2/topics/auth/default/

def user_logout(request):
    if request.user.is_authenticated:
        logout(request)
        return JsonResponse({'status': 'OK', 'message': 'Loged out'})
    else:
        return JsonResponse({'message': 'Unauthenticated User'})

def auth_user(request):
    if request.user.is_authenticated:
        user = request.user
        user_data = {
            'username': user.username,
            'email': user.email,
        }
        return JsonResponse({'status': 'OK', 'message': 'Authenticated User', 'data': user_data})
    else:
        return JsonResponse({'message': 'Unauthenticated User'})

def user_login(request):
    if request.method == 'POST':
        try:
            read_data = json.loads(request.body.decode('utf-8'))
            user = authenticate(username=read_data.get('username'), password=read_data.get('password'))
            if user is not None:
                # A backend authenticated the credentials
                login(request, user)
                return JsonResponse({'status': 'OK', 'message': 'Successfully Login'})
            else:
                # No backend authenticated the credentials
                return JsonResponse({'message': 'Not Login'})
        except json.JSONDecodeError:
            return JsonResponse(
                {
                    'message': "Invalid JSON data",
                },
                status=400  # Return a 400 Bad Request response for invalid JSON
            )
        except Exception as e:
            return JsonResponse(
                {
                    'message': "Error processing data",
                    'error_message': str(e),
                },
                status=500  # Return a 500 Internal Server Error response for other errors
            )

    return JsonResponse({'message': 'Not Login'})
        


# def user_register(request):
#     if request.method == 'POST':
#         # form = UserCreationForm(request.POST)
#         user = User.objects.create_user(request.POST.get('username'), request.POST.get('email'), request.POST.get('password'))
#         # user.save()
#         return HttpResponse(user)
#     else:
#         form = UserCreationForm()
#         return JsonResponse(
#             {
#                 'message': "Not Registar"
#             }
#         )

def user_register(request):
    if request.method == 'POST':
        try:
            read_data = json.loads(request.body.decode('utf-8'))

            # return JsonResponse(
            #     {
            #         'status': 'OK',
            #         'message': "Data processed successfully",
            #         'predictions': read_data['username'],
            #     },
            #     safe=False
            # )
            # Get user data from the POST request
            username = read_data['username']
            email = read_data['email']
            password = read_data['password']
            c_password = read_data['c_password']

            # Check if the username is unique
            if User.objects.filter(username=username).exists():
                return JsonResponse({'message': 'Username already exists'})
            elif password != c_password:
                return JsonResponse({'message': 'Password not maches'})
            elif User.objects.filter(email=email).exists():
                return JsonResponse({'message': 'Email already exists'})

            # Create a new user account
            user = User.objects.create_user(username, email, password)

            return JsonResponse({'status': 'OK', 'message': 'Registration successful'})
        except json.JSONDecodeError:
            return JsonResponse(
                {
                    'message': "Invalid JSON data",
                },
                status=400  # Return a 400 Bad Request response for invalid JSON
            )
        except Exception as e:
            return JsonResponse(
                {
                    'message': "Error processing data",
                    'error_message': str(e),
                },
                status=500  # Return a 500 Internal Server Error response for other errors
            )

    return JsonResponse({'message': 'Not registered'})

