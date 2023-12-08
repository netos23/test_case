from rest_framework.pagination import PageNumberPagination


class ApiPagination(PageNumberPagination):
    page_size = 100
    page_size_query_param = "page_size"
    max_page_size = 100

    def get_next_link(self):
        link = super(ApiPagination, self).get_next_link()
        if link:
            return link.replace(self.request._current_scheme_host, "")

    def get_previous_link(self):
        link = super(ApiPagination, self).get_previous_link()
        if link:
            return link.replace(self.request._current_scheme_host, "")
