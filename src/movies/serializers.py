from rest_framework import serializers
from .models import Movie

# MovieSerializer is a serializer for the Movie model.
# It converts the Movie model instances into JSON format and vice versa.
class MovieSerializer(serializers.ModelSerializer):
    class Meta:
        model = Movie
        fields = ['id', 'title', 'description', 'release_date', 'rating', 'genre', 'created_at', 'updated_at']
        read_only_fields = ['created_at', 'updated_at']