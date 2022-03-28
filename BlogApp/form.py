from django.forms import ModelForm
from BlogApp.models import *


class CommentForm(ModelForm):
    class Meta:
        model = Comment
        # fields = "__all__"
        exclude = ["allowcomment", "post"]
        
