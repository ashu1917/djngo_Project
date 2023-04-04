from django.shortcuts import render
from rest_framework import viewsets
from admins.models import Users,Roles,Product
from django.db import connection
from apis.serializers import UserSerializer,RoleSerializer,ProductSerializer
from rest_framework.renderers import JSONRenderer
from rest_framework.parsers import JSONParser
from django.http.response import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from django.contrib.auth.hashers import make_password,check_password
# Create your views here.

@csrf_exempt
def UserViewSet(request):
    if request.method=="GET":
        serializer_class = UserSerializer
        users=Users.objects.all()
        serializer=UserSerializer(users, many=True)
        return JsonResponse(serializer.data,safe=False)

def UserViewdemoSet(request):
    if request.method=="GET":
        serializer_class = UserSerializer
        cursor = connection.cursor()
        c="SELECT * FROM users"
        ca=cursor.execute(c)
        
        queryset = cursor.fetchall()
        
        datas={
                'abc':queryset,
            }
        print(datas)
        serializer=UserSerializer(datas, many=True)
        return JsonResponse(serializer.data,safe=False)
        # return JsonResponse(queryset,safe=False)
@csrf_exempt
def saveuser(request): 
    cursor = connection.cursor()
    name=request.POST.get('name')
    fathername=request.POST.get('fathername')
    email=request.POST.get('email')
    password=request.POST.get('password')
    mobile=request.POST.get('phone')
    aadharno=request.POST.get('aadhar')
    role=request.POST.get('role')
    hashpassword=make_password(password)
    print('ggggg')
    print(name)
    print('nnnnn')
    if name is not None:
        if fathername is not None:
            if email is not None:
                if password is not None:
                    if mobile is not None:
                        if aadharno is not None:
                            if role is not None:
                                # user=Users.objects.get(email=email)
                                # print(Users.objects.get(email=email).query)
                                # if user is  None:
                                # datas={
                                # 'error':'Email is Already Exist',
                                # 'status':'400'
                                # }
                                # return JsonResponse(datas,safe=False)
                                # else:
                                # print('aaaa')
                                insert = Users(name=name,fathername=fathername,email=email,password=password,mobile=mobile,aadharno=aadharno,roll_id=role,status='1')
                                # print(insert.querys)
                                aa=insert.save()
                                LastInsertId = (Users.objects.last()).id
                                # serializer=UserSerializer(lastid, many=True)
                                datas={
                                    'id':LastInsertId,
                                    'msg':'Success',
                                    'status':'200'
                                }
                                return JsonResponse(datas,safe=False)
                            else:
                                datas={
                                    'error':'Role is Required',
                                    'status':'400'
                                }
                                return JsonResponse(datas,safe=False)
                        else:
                            datas={
                                'error':'Aadhar No. is Required',
                                'status':'400'
                            }
                            return JsonResponse(datas,safe=False)
                    else:
                        datas={
                            'error':'Mobile is Required',
                            'status':'400'
                        }
                        return JsonResponse(datas,safe=False)
                else:
                    datas={
                        'error':'Password is Required',
                        'status':'400'
                    }
                    return JsonResponse(datas,safe=False)
            else:
                datas={
                    'error':'Email is Required',
                    'status':'400'
                }
                return JsonResponse(datas,safe=False)    
        else:
            datas={
                'error':'Father Name is Required',
                'status':'400'
            }
            return JsonResponse(datas,safe=False)   
    else:
        datas={
            'error':'Name is Required',
            'status':'400'
        }
        return JsonResponse(datas,safe=False)  

def Roleget(request):
    if request.method=="GET":
        serializer_class = RoleSerializer
        role=Roles.objects.all()
        serializer=RoleSerializer(role, many=True)
        return JsonResponse(serializer.data,safe=False)
@csrf_exempt
def userprofile(request):
    if request.method=="POST":
        serializer_class = UserSerializer
        id=request.POST.get('id')
        userp=Users.objects.get(id=id)
        serializer=UserSerializer(userp, many=False)
        return JsonResponse(serializer.data,safe=False)

def Productget(request):
    if request.method=="GET":
        serializer_class = ProductSerializer
        productget=Product.objects.all()
        serializer=ProductSerializer(productget, many=True)
        return JsonResponse(serializer.data,safe=False)

@csrf_exempt
def loginuser(request): 
    cursor = connection.cursor()
    Role=request.POST.get('role')
    mobile=request.POST.get('mobile')
    if Role is not None:
        if mobile is not None:
            userlogin=Users.objects.get(mobile=mobile)
            if userlogin is not None:                 
                datas={
                    
                    'msg':'Success',
                    'status':'200'
                }
                return JsonResponse(datas,safe=False)  
            else:
                datas={
                'error':'Invalid Login',
                'status':'400'
            }
            return JsonResponse(datas,safe=False)                
        else:
            datas={
                'error':'Mobile is Required',
                'status':'400'
            }
            return JsonResponse(datas,safe=False)   
    else:
        datas={
            'error':'Role is Required',
            'status':'400'
        }
        return JsonResponse(datas,safe=False)  
