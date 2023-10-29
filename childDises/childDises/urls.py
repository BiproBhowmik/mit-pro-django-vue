from django.contrib import admin
from django.urls import include, path

from childDises import views

urlpatterns = [
    path('admin/', admin.site.urls),

    path('auth/', include('auth.urls')),

    path('dengue/', include('dengue.urls')),
    path('test/', views.test),
]
