import json
import joblib  # Assuming you saved the model using joblib
from django.http import JsonResponse
import pandas as pd


# def prediction(request):
#     if request.method == 'POST':
#         try:
#             post_data = json.loads(request.body.decode('utf-8'))

#             # Load the machine learning model
#             model = joblib.load("./MLModeles/DenguModel.pickle")

#             # Create a DataFrame from the post_data
#             post_df = pd.DataFrame([post_data])

#             post_df['bmi'] = float(post_df['wgt']) / (float(post_df['hgt']) ** 2)

#             # Print the feature names for debugging
#             # feature_names = post_df.columns
#             # print("Feature Names:", feature_names)

#             post_df = post_df[['sex', 'age', 'wgt', 'hgt', 'bmi', 'fever', 'platelet', 'hemato', 'wbc', 'j_pain',
#             's_rash', 'headache', 'abdo_pain', 'vomit', 'bleed', 'ns1_anti',
#             'igm_anti', 'igg_anti', 'hospi']]

#             # Make predictions
#             predictions = model.predict(post_df)

#             return JsonResponse(
#                 {
#                     'status': 'OK',
#                     'message': "Data processed successfully",
#                     'predictions': predictions.tolist()[0],
#                 },
#                 safe=False
#             )
#         except json.JSONDecodeError:
#             return JsonResponse(
#                 {
#                     'message': "Invalid JSON data",
#                 },
#                 status=400  # Return a 400 Bad Request response for invalid JSON
#             )
#         except Exception as e:
#             return JsonResponse(
#                 {
#                     'message': "Error processing data",
#                     'error_message': str(e),
#                 },
#                 status=500  # Return a 500 Internal Server Error response for other errors
#             )
    
#     return JsonResponse(
#         {
#             'message': "Invalid request method",
#         },
#         safe=False
#     )

from django.contrib.auth.models import User
from django.http import JsonResponse
from rest_framework import status
from rest_framework.views import APIView
from rest_framework.authentication import TokenAuthentication
from rest_framework.response import Response
from rest_framework import authentication, permissions
# from .serializers import UserRegistrationSerializer  # Import your user registration serializer
import joblib
# import panPredictiondas as pd
import json
import sklearn


class Prediction(APIView):
    authentication_classes = [TokenAuthentication]
    permission_classes = [permissions.IsAuthenticated]

    def post(self, request, format=None):
        if request.method == 'POST':
            try:
                post_data = json.loads(request.body.decode('utf-8'))
                
                # Load the machine learning model
                model = joblib.load("./MLModeles/DenguModel_Final.pickle")

                # Create a DataFrame from the post_data
                post_df = pd.DataFrame([post_data])

                post_df = post_df[['Sex', 'Race', 'Residence_Area', 'Fever', 'Myalgia',
                     'Headache', 'Rash',
                    'Vomiting', 'Nausea', 'Back_Pain', 'Conjunctivitis', 'Arthritis',
                    'Artralgia', 'Petechiae', 'Tourniquet_Test', 'Retroorbital_Pain',
                    'Diabetes', 'Hematological_Disease', 'Liver_Disease', 'Kidney_Disease',
                    'Hypertension', 'Peptic_Acid_Disease', 'Auto_Immune_Disease',
                    'Day_Count_of_Symptoms', 'Patient_Age_Years']]

                # Make predictions
                predictions = model.predict(post_df)

                return JsonResponse(
                    {
                        'status': 'OK',
                        'message': "Data processed successfully",
                        'predictions': predictions.tolist()[0],
                    },
                    safe=False
                )
            except json.JSONDecodeError:
                return JsonResponse(
                    {
                        'message': "Invalid JSON data",
                    },
                    status=400  # Return a 400 Bad Request response for invalid JSON
                )
            except Exception as e:
                return JsonResponse(
                    {
                        'message': "Error processing data",
                        'error_message': str(e),
                    },
                    status=500  # Return a 500 Internal Server Error response for other errors
                )
        
        return JsonResponse(
            {
                'message': "Invalid request method",
            },
            safe=False
        )
