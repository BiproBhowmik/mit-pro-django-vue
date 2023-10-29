from django.urls import include, path
# from . import dviews
# from . import aviews

from auth.priViews import AuthUser, ListUsers, Logout
from auth.pubViews import TokenLogin, Registration

from rest_framework.authtoken import views

urlpatterns = [
    # path('register/', dviews.user_register, name='register'),
    # path('login/', dviews.user_login, name='login'),
    # path('authUser/', dviews.auth_user, name='authUser'),
    # path('logout/', dviews.user_logout, name='logout'),

    path('api/users/', ListUsers.as_view()),
    # path('api-token-auth/', views.obtain_auth_token),

    path('register/', Registration.as_view()),
    path('login/', TokenLogin.as_view()),
    path('authUser/', AuthUser.as_view()),
    path('logout/', Logout.as_view()),

    # path('register/', aviews.user_register, name='register'),
    # path('login/', aviews.user_login, name='login'),
    # path('authUser/', aviews.auth_user, name='authUser'),
    # path('logout/', aviews.user_logout, name='logout'),

    # path('auth/login', include('djoser.paths')),
    # path('auth/login2', include('djoser.urls.authtoken')),
]
