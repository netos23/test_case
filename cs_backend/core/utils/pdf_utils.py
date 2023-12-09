from fillpdf.fillpdfs import write_fillable_pdf


def fill_pdf(user_name, course, template_file_name='inp.pdf'):
    data = {'name_field': user_name, "course_field": course}
    write_fillable_pdf(template_file_name, 'out.pdf', data, flatten=False)


