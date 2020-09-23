using System;
using System.Collections.Generic;
using System.Text;
using System.Text.Json;

namespace KanbanApp.Api.IntegrationTests.Helpers.Serialization
{
    public static class JsonSerializerHelper
    {
        public static JsonSerializerOptions DefaultSerialisationOptions => new JsonSerializerOptions
        {
            IgnoreNullValues = true
        };

        public static JsonSerializerOptions DefaultDeserialisationOptions => new JsonSerializerOptions
        {
            PropertyNameCaseInsensitive = true
        };
    }
}
