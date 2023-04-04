from django.urls import path,include
from apis.views import UserViewSet
from . import views
from rest_framework import routers,serializers, viewsets


router=routers.DefaultRouter()
# router.register(r'users',UserViewSet)

urlpatterns=[
    path('user/get',views.UserViewSet),
    path('user/save',views.saveuser),
    path('user/profile',views.userprofile),
    path('user/login',views.loginuser),
    path('users/demo',views.UserViewdemoSet),
    path('roles/get',views.Roleget),
    path('product/get',views.Productget),
]

