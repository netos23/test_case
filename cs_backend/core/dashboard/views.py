from django.core import serializers
from django.http import JsonResponse
from django.shortcuts import render

from orders.models import OrderModel


def dashboard_with_pivot(request):
    return render(request, 'dashbord.html', {})


def pivot_data(request):
    dataset = OrderModel.objects.all()
    data = serializers.serialize('json', dataset)
    return JsonResponse(data, safe=False)
