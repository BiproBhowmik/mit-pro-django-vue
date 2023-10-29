from django.contrib.auth.models import User
from rest_framework import serializers

# class SnippetSerializer(serializers.ModelSerializer):
#     class Meta:
#         model = User
#         fields = ['id', 'username', 'email', 'first_name', 'last_name']

from django.contrib.auth.models import User

class UserRegistrationSerializer(serializers.Serializer):
    username = serializers.CharField()
    email = serializers.EmailField()
    password = serializers.CharField(write_only=True)
    c_password = serializers.CharField(write_only=True)

    def validate(self, data):
        # Check if the passwords match
        if data['password'] != data['c_password']:
            raise serializers.ValidationError("Passwords do not match.")
        
        # Check if the username is unique
        if User.objects.filter(username=data['username']).exists():
            raise serializers.ValidationError("Username already exists.")
        
        # Check if the email is unique
        if User.objects.filter(email=data['email']).exists():
            raise serializers.ValidationError("Email already exists.")
        
        # Check if the email is unique
        # if User.objects filter(email=data['email']).exists():
        #     raise serializers.ValidationError("Email already exists.")
        
        return data
