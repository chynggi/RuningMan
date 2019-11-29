from django.urls import path 
from . import views 
app_name ='HomePage'
urlpatterns=[
    path('',views.index,name='index'),
    path('index',views.index,name='index'),
    path('contact',views.contact,name='contact'),
    path('sslist',views.SSlist,name='sslist'),
    path('sswrite',views.SSwrite,name='sswrite'),   
    path('ssupdate/<int:no>',views.SSupdate,name='ssupdate'),   
    path('ssdelete/<int:no>',views.SSdelete,name='ssdelete'),    
    path('logout',views.logout,name='logout'),
    path('login',views.login,name='loginorReg'),
    path('register',views.register,name='loginorReg'),
    path('sspost/<int:no>',views.SSpost,name='sspost'),
    path('about',views.about,name='about'),
]
