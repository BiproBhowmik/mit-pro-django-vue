from . import views
from django.urls import include, path

from dengue.views import Prediction

urlpatterns = [
    # path('prediction/', views.prediction),
    path('prediction/', Prediction.as_view()),
]
