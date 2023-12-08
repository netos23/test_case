import logging

from django.conf import settings
from rest_framework.exceptions import ValidationError, APIException
from rest_framework.response import Response

from utils.exceptions import BaseRestException


def exceptions_handler(exc, context):
    if isinstance(exc, BaseRestException):
        return Response({
            'success': 0, 'status': 0, 'error': exc.error_code, 'error_text': exc.error_text, 'message': exc.message
        }, status=exc.get_codes())
    elif isinstance(exc, ValidationError):
        return Response({
            'success': 0, 'status': 0, 'error': 1, 'error_text': exc.default_detail, 'message': f"{exc.detail}"
        }, status=exc.status_code)
    elif isinstance(exc, APIException):
        return Response({
            'success': 0, 'status': 0, 'error': 1, 'error_text': str(exc.detail), 'message': ''
        }, status=exc.status_code)
    else:
        logger = logging.getLogger('root')
        logger.exception('Unexpect server error')
        if settings.DEBUG:
            return None
        return Response({
            'success': 0, 'status': 0, 'error': 1, 'error_text': 'Unexpected server error', 'message': ''
        }, status=500)
