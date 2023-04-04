from django.db import models

# Create your models here.
class Users(models.Model):
    id=models.AutoField(primary_key=True)
    name=models.CharField(max_length=250,null=True,default=None)
    email=models.EmailField(max_length=250,null=True,default=None)
    password=models.CharField(max_length=250,null=True,default=None)
    mobile=models.CharField(max_length=250,null=True,default=None)
    fathername=models.CharField(max_length=250,null=True,default=None)
    aadharno=models.CharField(max_length=250,null=True,default=None)
    roll_id=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class Meta:
        db_table='users'

class Roles(models.Model):
    id=models.AutoField(primary_key=True)
    name=models.CharField(max_length=250,null=True,default=None)
    slug=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class Meta:
        db_table='roles'

class Account(models.Model):
    id=models.AutoField(primary_key=True)
    holdername=models.CharField(max_length=250,null=True,default=None)
    accountnumber=models.CharField(max_length=250,null=True,default=None)
    branch=models.CharField(max_length=250,null=True,default=None)
    ifsc=models.CharField(max_length=250,null=True,default=None)
    bank_name=models.CharField(max_length=250,null=True,default=None)
    user_id=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class Meta:
        db_table='accounts'

class Notifications(models.Model):
    id=models.AutoField(primary_key=True)
    roleid=models.CharField(max_length=250,null=True,default=None)
    userid=models.CharField(max_length=250,null=True,default=None)
    productid=models.CharField(max_length=250,null=True,default=None)
    datetime=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class meta:
        db_table='notification'

class Transactionhistory(models.Model):
    id=models.AutoField(primary_key=True)
    userid=models.CharField(max_length=250,null=True,default=None)
    productid=models.CharField(max_length=250,null=True,default=None)
    amount=models.CharField(max_length=250,null=True,default=None)
    datetime=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class meta:
        db_table='transaction_history'

class Qualityparam(models.Model):
    id=models.AutoField(primary_key=True)
    certificat_id=models.CharField(max_length=250,null=True,default=None)
    location=models.CharField(max_length=250,null=True,default=None)
    image=models.CharField(max_length=250,null=True,default=None)
    cropid=models.CharField(max_length=250,null=True,default=None)
    testid=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class meta:
        db_table='quality_parameter'

class Admin(models.Model):
    id=models.AutoField(primary_key=True)
    username=models.CharField(max_length=250,null=True,default=None)
    email=models.CharField(max_length=250,null=True,default=None)
    password=models.CharField(max_length=250,null=True,default=None)
    phone=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class Meta:
        db_table='admin'

class Crops(models.Model):
    id=models.AutoField(primary_key=True)
    name=models.CharField(max_length=250,null=True,default=None)
    image=models.FileField(upload_to="crop/",max_length=500,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class Meta:
        db_table='crops'

class Auction(models.Model):
    id=models.AutoField(primary_key=True)
    fid=models.CharField(max_length=250,null=True,default=None)
    productid=models.CharField(max_length=250,null=True,default=None)
    userid=models.CharField(max_length=250,null=True,default=None)
    datetime=models.CharField(max_length=250,null=True,default=None)

    class Meta:
        db_table='auctions'

class Quaitytestuser(models.Model):
    id=models.AutoField(primary_key=True)
    userid=models.CharField(max_length=250,null=True,default=None)
    productid=models.CharField(max_length=250,null=True,default=None)
    certificateno=models.CharField(max_length=250,null=True,default=None)
    datetime=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)

    class Meta:
        db_table='qualitytestuser'

class Product(models.Model):
    id=models.AutoField(primary_key=True)
    userid=models.CharField(max_length=250,null=True,default=None)
    cropid=models.CharField(max_length=250,null=True,default=None)
    name=models.CharField(max_length=250,null=True,default=None)
    price=models.CharField(max_length=250,null=True,default=None)
    quality=models.CharField(max_length=250,null=True,default=None)
    location=models.CharField(max_length=250,null=True,default=None)
    image=models.FileField(upload_to="product/",max_length=500,null=True,default=None)
    datetime=models.CharField(max_length=250,null=True,default=None)
    status=models.CharField(max_length=250,null=True,default=None)
    # roleid=models.ForeignKey(Roles,on_delete=models.CASCADE,null=True,related_name='roles')
    roleid=models.CharField(max_length=250,null=True,default=None)
    class Meta:
        db_table='product'
