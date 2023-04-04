from rest_framework import serializers
from admins.models import Users,Roles,Product

class UserSerializer(serializers.ModelSerializer):
    class Meta:
        model=Users
        fields="__all__"

class RoleSerializer(serializers.ModelSerializer):
    class Meta:
        model=Roles
        fields="__all__"

class ProductSerializer(serializers.ModelSerializer):
    class Meta:
        model=Product
        fields="__all__"
