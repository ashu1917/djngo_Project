from django.http import HttpResponse,HttpResponseRedirect
from django.shortcuts import render
import mysql.connector as sql
from admins.models import Users,Roles,Product,Admin,Crops
from django.db import connection
from django.contrib.auth.hashers import make_password,check_password
from django.contrib.auth import authenticate,login
from django.http import JsonResponse
import datetime

# Create your views here.
em=''
pwd=''
name=''
fname=''
mob=''
ids=''
aadhar=''
image=''

def send_json(request):

    cursor = connection.cursor()
    cursor.execute("SELECT * FROM users")
    
    myresult = cursor.fetchall()
    t=tuple(myresult)
    data={
        'abc':t,
    }

    return JsonResponse(data, safe=False)

def login(request):
    return render(request,'enroll/login.html')
def adminlogin(request):
        if request.method=="POST":
            email=request.POST.get('email')
            password=request.POST.get('password')
            print(email, password)
            user=Admin.objects.get(email=email)
            
            if user is not None:
                print('hi')
                flag=check_password(password,user.password)
                if flag:
                    request.session['admin_id']=user.id
                    request.session['admin_email']=user.email
                    request.session['admin_username']=user.username
                    request.session.set_expiry(7200)
                    return HttpResponseRedirect('/dash')
                else:
                    return HttpResponse("Username or Password is incorrect")
            else:
                return HttpResponse("Username or Password is incorrect")
                # return HttpResponseRedirect('/dash')
        return render(request,'enroll/home.html')
    


def dashboard(request):
    id=request.session.get('admin_id')
    username=request.session.get('admin_username')
    if id is not None:
        buyers=Users.objects.filter(roll_id='2').count
        farmers=Users.objects.filter(roll_id='1').count
        logistics=Users.objects.filter(roll_id='3').count
        data={
            'loginuser':username,
            'farmercount':farmers,
            'buyercount':buyers,
            'logisticscount':logistics
        }
        return render(request,'enroll/index.html',data)
    else:
        return HttpResponseRedirect('/')

def profileview(request):
    result=Admin.objects.filter(id='1')
    password=result.password
    data={
        'abc':result,
    }
    return render(request,'enroll/editprofile.html',data)
def profileupdate(request):
    global em,pwd,name,mob
    if request.method=="POST":
        cursor = connection.cursor()
        name=request.POST.get('name')
        email=request.POST.get('email')
        password=request.POST.get('password')
        # hashpassword=make_password(password)
        mobile=request.POST.get('mobile')
        # print(mobile)
        d=request.POST
        cursor = connection.cursor()
        for key,value in d.items():
            if key=="email":
                em=value
            if key=="password":
                pwd=value
            if key=="name":
                name=value
            if key=="mobile":
                mob=value
        c="UPDATE `admin` SET `username`='{}',`email`='{}',`password`='{}',`phone`='{}' WHERE `id`='1'".format(name,em,pwd,mob)
        ac=cursor.execute(c)
        print(c)
        if ac==():
            return HttpResponse('Error')
        else:
            return HttpResponseRedirect('/profile/view/')
        connection.commit()
    else:
            return HttpResponse('You have in get method')
# =============user section start==========================
def useradd(request):
    result=Roles.objects.all()
    data={
        'abc':result,
    }
    return render(request,'enroll/adduser.html',data)

def savedemouser(request):
    if request.method=="POST":
        cursor = connection.cursor()
        name=request.POST.get('name')
        fathername=request.POST.get('fathername')
        email=request.POST.get('email')
        password=request.POST.get('password')
        mobile=request.POST.get('phone')
        aadharno=request.POST.get('aadhar')
        hashpassword=make_password(password)
        # sql = """INSERT INTO user(name, email, mobile, password, aadharno,fathername,status)VALUES ('name', 'email', 'password', 'mobile', 'aadharno','fathername','1')"""
        add_user = ("INSERT INTO users "
                "(name, email, mobile, password, aadharno,fathername,status) "
                "VALUES (%s, %s, %s, %s, %s, %s,%s)")

        data_user = (name, email, mobile, hashpassword, aadharno,fathername,1)
        
        try:
            # Executing the SQL command
            cursor.execute(add_user,data_user)
            print('aaaaaaaaaaaaaaaaaaa')
            # strs = cursor.query
            # ptint(strs)
            print('aaaaaaaaaaaaaaaaaaa')
            # Commit your changes in the database
            connection.commit()
            return HttpResponse(add_user)

        except:
            # Rolling back in case of error
            connection.rollback()
    else:
        return HttpResponse('You have in get method')

def userlist(request):
    cursor = connection.cursor()
    cursor.execute("SELECT users.*,roles.name AS rolename FROM users,roles WHERE users.roll_id=roles.id")
    
    myresult = cursor.fetchall()

    data={
        'abc':myresult,
    }
    return render(request,'enroll/userlist.html',data)

# def userlist(request):
#     users=Users.objects.all()

#     data={
#         'abc':users,
#     }
#     return render(request,'enroll/userlist.html',data)

def userdelete(request):
    id=request.GET.get('id')
    cursor = connection.cursor()
    cursor.execute("DELETE FROM users WHERE id="+id)
    
    myresult = cursor.fetchall()
    return HttpResponseRedirect('/user/list')

def edituser(request):
    id=request.GET.get('id')
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM users WHERE id="+id)
    
    myresult = cursor.fetchall()
    data={
        'abc':myresult,
    }
    return render(request,'enroll/updateuser.html',data)

def updateuser(request):
    global em,pwd,name,fname,mob,ids,aadhar
    if request.method=="POST":
        cursor = connection.cursor()
        id=request.POST.get('id')
        name=request.POST.get('name')
        fathername=request.POST.get('fathername')
        email=request.POST.get('email')
        password=request.POST.get('password')
        mobile=request.POST.get('phone')
        aadharno=request.POST.get('aadhar')
        hashpassword=make_password(password)
        d=request.POST
        cursor = connection.cursor()
        for key,value in d.items():
            if key=="email":
                em=value
            if key=="password":
                pwd=value
            if key=="name":
                name=value
            if key=="fathername":
                fname=value
            if key=="phone":
                mob=value
            if key=="id":
                ids=value
            if key=="aadhar":
                aadhar=value
            print('====================================')
            print(ids)
            print('====================================')
        c="UPDATE `users` SET `name`='{}',`email`='{}',`password`='{}',`mobile`='{}',`fathername`='{}',`aadharno`='{}' WHERE `id`= '{}'".format(name,em,pwd,mob,fname,aadhar,ids)
        ac=cursor.execute(c)
        print(c)
        if ac==():
            return HttpResponse('Email Or Password is Incorrect')
        else:
            return HttpResponseRedirect('/user/list/')
        connection.commit()
    else:
            return HttpResponse('You have in get method')

# =================user section end================================

# ===================crop section start============================

def addcrop(request):
    return render(request,'enroll/addcrop.html')

def savecrop(request):
    global name,image
    if request.method=="POST":
        cursor = connection.cursor()
        name=request.POST.get('name')
        image=request.FILES['image']
        d=request.POST
        cursor = connection.cursor()
        for key,value in d.items():
            if key=="name":
                name=value
            if key=="image":
                image=value
            status='1'
        c="INSERT INTO `crops`(`name`, `status`, `image`) VALUES ('{}','{}','{}')".format(name,status,image)
        
        ac=cursor.execute(c)
        print(c)
        if ac==():
            return HttpResponse('Error')
        else:
            return HttpResponseRedirect('/user/list/')
        connection.commit()
    else:
        return HttpResponse('You have in get method')
    
def croplist(request):
    cursor = connection.cursor()
    cursor.execute("SELECT * FROM crops")
    
    myresult = cursor.fetchall()

    data={
        'abc':myresult,
    }
    return render(request,'enroll/croplist.html',data)

# ==================crop section end==============================

# ==================Product Section Start===========================

def addproduct(request):
    roles=Roles.objects.all()
    users=Users.objects.all()
    crops=Crops.objects.all()
    data={
        'role':roles,
        'user':users,
        'crop':crops
    }
    return render(request,'enroll/addproduct.html',data)
def productsave(request):
    if request.method=="POST":
        # now = datetime.now()
        current_datetime = datetime.datetime.now()
        cursor = connection.cursor()
        name=request.POST.get('name')
        price=request.POST.get('price')
        cropid=request.POST.get('crop')
        userid=request.POST.get('user')
        roleid=request.POST.get('role')
        quality=request.POST.get('quality')
        image=request.FILES['image']
        
        # sql = """INSERT INTO user(name, email, mobile, password, aadharno,fathername,status)VALUES ('name', 'email', 'password', 'mobile', 'aadharno','fathername','1')"""
        # add_user = ("INSERT INTO users "
        #         "(name, userid, cropid, price, quality,roleid,status,image) "
        #         "VALUES (%s, %s, %s, %s, %s, %s,%s,%s)")

        # data_user = (name, userid, cropid, price, quality,roleid,1,image)
        prod=Product(name=name,userid=userid,cropid=cropid,price=price,quality=quality,roleid=roleid,status='1',image=image,datetime=current_datetime)
        prod.save()
        return HttpResponseRedirect('/product/list/')
    else:
        return HttpResponse('You are in get method')

def productlist(request):
    if request.method=="GET":
        cursor = connection.cursor()
        
        c="SELECT product.*,crops.name AS cropname,users.name AS username,roles.name AS rolename FROM `product`,`users`,`roles`,`crops` WHERE product.userid=users.id&&product.cropid=crops.id&&product.roleid=roles.id"
        
        ac=cursor.execute(c)
        myresult = cursor.fetchall()
        if ac==():
            return HttpResponse('Error')
        else:
            data={
                'abc':myresult
            }
            return render(request,'enroll/productlist.html',data)
        connection.commit()
    else:
        return HttpResponse('You have in get method')
# ===================Product Section End============================
    

    
