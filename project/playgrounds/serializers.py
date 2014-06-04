from rest_framework import serializers

from .models import Playground

class SchoolSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Playground
        fields = ('name', 'district', 'location', 'town', 'gaming_devices', 'equipment', 'latitude', 'longitude')
