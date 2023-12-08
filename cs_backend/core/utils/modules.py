from django.urls import path, include
from drf_yasg.generators import OpenAPISchemaGenerator


def add_module_urls(module_name: str, urlpatterns: list):
    """Extend root urlpatterns from module.urls.urlpatterns"""
    module = __import__(module_name)
    if getattr(module, "urls"):
        url_path = f"{module_name}.urls"
        urlpatterns.append(path(f"{module_name}/", include(url_path)))


class BothHttpAndHttpsSchemaGenerator(OpenAPISchemaGenerator):
    def get_schema(self, request=None, public=False):
        schema = super().get_schema(request, public)
        schema.schemes = ["https", "http"]
        return schema
