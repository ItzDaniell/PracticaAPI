from rest_framework import viewsets, permissions
from .models import Movie
from .serializers import MovieSerializer

# MovieViewSet is a viewset for the Movie model.
# This viewset automatically provides `list`, `create`, `retrieve`, `update` and `destroy` actions.
class MovieViewSet(viewsets.ModelViewSet):
    queryset = Movie.objects.all() # This queryset retrieves all Movie instances from the database.
    permission_classes = [permissions.AllowAny] # This viewset allows any user to access the Movie API.
    serializer_class = MovieSerializer # This serializer is used to convert the Movie model instances into JSON format and vice versa.