from rest_framework.exceptions import APIException


class BaseRestException(APIException):
    def __init__(self, error_text="", message="", status_code=500, error_code=None):
        super(BaseRestException, self).__init__(detail=error_text, code=status_code)
        self.error_text = str(error_text)
        self.message = str(message)
        self.status = 0
        # self.status_code = status_code
        if error_code is not None:
            self.error_code = error_code
        elif not message:
            self.error_code = 1
        else:
            self.error_code = 2


