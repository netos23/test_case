from drf_yasg.utils import swagger_auto_schema
from rest_framework import generics
from rest_framework import permissions
from rest_framework import serializers
from rest_framework import status
from rest_framework.response import Response
from rest_framework_simplejwt import authentication
from rest_framework_simplejwt.views import TokenRefreshView

from .models import Users
from .serializers import (
    JWTRefreshSerializer,
    ResponseUserSerializer, RequestUserSerializer, AuthResponseSerializer,
)
from .services import (
    UserService, EmailPart1, EmailPart2
)


class JWTRefreshView(TokenRefreshView):
    """Refresh token. Please send access JWT in header."""

    permission_classes = ()
    authentication_classes = ()
    serializer_class = JWTRefreshSerializer


class UserView(generics.GenericAPIView):
    """Work with users"""

    permission_classes = (permissions.IsAuthenticated,)
    authentication_classes = (authentication.JWTAuthentication,)

    @swagger_auto_schema(
        responses={
            status.HTTP_200_OK: ResponseUserSerializer,
            status.HTTP_401_UNAUTHORIZED: {},
        }
    )
    def get(self, request):
        """Get user. JWT required"""
        request.auth.verify()
        user_id = request.auth.get("user_id")
        service = UserService(user_id=user_id)
        user = service.get_user(user_id)
        return Response(ResponseUserSerializer(user).data, status.HTTP_200_OK)

    @swagger_auto_schema(
        request_body=RequestUserSerializer,
        responses={
            status.HTTP_200_OK: ResponseUserSerializer,
            status.HTTP_401_UNAUTHORIZED: {},
        },
    )
    def patch(self, request):
        """Update user info. JWT required"""
        serializer = RequestUserSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        user_id = request.auth.get("user_id")
        service = UserService(user_id)
        user = service.update_user(data=serializer.validated_data)
        data = ResponseUserSerializer(user).data
        return Response(data, status.HTTP_200_OK)

    def delete(self, request):
        user_id = request.auth.get("user_id")
        user = Users.objects.get(id=user_id)
        user.is_active = False
        user.first_name = "deleted"
        user.last_name = "deleted"
        user.email = "deleted"
        user.birthday = None
        user.gender = "-1"
        user.save()
        if user:
            return Response(data={}, status=status.HTTP_204_NO_CONTENT)


class RegisterUserView(generics.GenericAPIView):
    permission_classes = ()
    authentication_classes = ()

    @swagger_auto_schema(
        request_body=RequestUserSerializer,
        responses={
            status.HTTP_200_OK: {},
        },
    )
    def post(self, request, *args, **kwargs):
        serializer = RequestUserSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        service = EmailPart1(**serializer.validated_data)
        service.register_user()
        service.send_code()
        return Response({}, status=status.HTTP_200_OK)


class EmailPart1View(generics.GenericAPIView):
    permission_classes = ()
    authentication_classes = ()

    class EmailPart1RequestSerializer(serializers.Serializer):
        email = serializers.CharField(max_length=128)
        digits = serializers.IntegerField(min_value=3, max_value=9, default=3, required=False)

    serializer_class = serializers.Serializer

    @swagger_auto_schema(
        request_body=EmailPart1RequestSerializer, responses={200: serializer_class(), 451: serializer_class()}
    )
    def post(self, request, *args, **kwargs):
        serializer = self.EmailPart1RequestSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        service = EmailPart1(**serializer.data)
        service.send_code()
        return Response({}, status=status.HTTP_200_OK)


class EmailPart2View(generics.GenericAPIView):
    permission_classes = ()
    authentication_classes = ()

    class EmailPart2RequestSerializer(serializers.Serializer):
        email = serializers.CharField(max_length=128)
        code = serializers.CharField()

    serializer_class = AuthResponseSerializer

    @swagger_auto_schema(
        request_body=EmailPart2RequestSerializer, responses={"200": serializer_class()}
    )
    def post(self, request, *args, **kwargs):
        serializer = self.EmailPart2RequestSerializer(data=request.data)
        serializer.is_valid(raise_exception=True)
        service = EmailPart2(request.user, **serializer.data)
        user = service.auth()
        return Response(AuthResponseSerializer(user).data, status=status.HTTP_200_OK)
