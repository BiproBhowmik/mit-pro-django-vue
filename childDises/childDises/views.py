from django.http import JsonResponse


def test(request):
    if request.method == 'POST':
        return JsonResponse(
                {
                    'message': "Updated",
                    'updated_data': 'employee_object',
                },
                safe=False
            )
    
    return JsonResponse(
                {
                    'message': "Updated",
                    'updated_data': 'employee_object2',
                },
                safe=False
            )