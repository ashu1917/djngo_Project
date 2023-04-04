from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

urlpatterns=[
    path('',views.login,name='login'),
    path('adminlogin/',views.adminlogin,name='adminlogin'),
    path('dash/',views.dashboard,name='dashboard'),
    path('user/list/',views.userlist,name='userlist'),
    path('user/add/',views.useradd,name='adduser'),
    path('saveuser/',views.savedemouser,name='saveuser'),
    path('user/edit/', views.edituser,name='edituser'),
    path('user/update/', views.updateuser,name='updateuser'),
    path('user/delete/', views.userdelete,name='userdelete'),
    # path('logout/', views.logout,name='logout'),
    path('send_json/', views.send_json,name='send_json'),
    path('crop/add/', views.addcrop,name='cropadd'),
    path('crop/save/', views.savecrop,name='cropsave'),
    path('crop/list/', views.croplist,name='croplist'),
    # path('category/list/', views.categorylist,name='catlist'),
    path('profile/view/',views.profileview,name='profileview'),
    path('profile/update/',views.profileupdate,name='profileupdate'),
    path('product/add/', views.addproduct,name='addproduct'),
    path('product/save/', views.productsave,name='saveproduct'),
    path('product/list/', views.productlist,name='listproduct'),
]

if settings.DEBUG:
    urlpatterns+=static(settings.MEDIA_URL,document_root=settings.MEDIA_ROOT)