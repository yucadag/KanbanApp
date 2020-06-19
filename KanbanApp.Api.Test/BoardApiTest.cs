using Newtonsoft.Json.Linq;
using RestSharp;
using System;
using System.Collections.Generic;
using System.Net;
using System.Text;
using Xunit;

namespace KanbanApp.Api.Test
{
  public  class BoardApiTest
    {
        [Fact]
        public void AddBoard()
        {
            var client = new RestClient("https://localhost:44321/api/board/add");
            var request = new RestRequest(Method.POST);
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Connection", "keep-alive");
            request.AddHeader("Content-Length", "18");
            request.AddHeader("Accept-Encoding", "gzip, deflate");
            request.AddHeader("Host", "localhost:44321");
            request.AddHeader("Postman-Token", "7dadcdfb-c2d6-41cc-9e23-ae1e094f52e9,f80606df-ac91-47ae-be5e-4d28dd1cb520");
            request.AddHeader("Cache-Control", "no-cache");
            request.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            request.AddHeader("Content-Type", "application/json");
            request.AddHeader("Accept", "application/json");
            request.AddParameter("undefined", "{\"Name\":\"Mustafa\"}", ParameterType.RequestBody);
            IRestResponse response = client.Execute(request);

            var statusCode = response.StatusCode;
            Assert.Equal(HttpStatusCode.OK, statusCode);

            var message = response.Content;
            Assert.Equal("! :) :) API PHONE-BOOK UP :) :) !", message);
        }

        [Fact]
        public void GetBoard()
        {

            var client = new RestClient("https://localhost:44321/api/board/get/5");
            var request = new RestRequest(Method.GET);
            request.AddHeader("cache-control", "no-cache");
            request.AddHeader("Connection", "keep-alive");
            request.AddHeader("Accept-Encoding", "gzip, deflate");
            request.AddHeader("Host", "localhost:44321");
            request.AddHeader("Postman-Token", "2f0ddc59-d264-4229-8406-ccc4430eee76,79deb0cb-fded-4310-b700-2f49a19bdad8");
            request.AddHeader("Cache-Control", "no-cache");
            request.AddHeader("Accept", "*/*");
            request.AddHeader("User-Agent", "PostmanRuntime/7.16.3");
            IRestResponse response = client.Execute(request);

            var statusCode = response.StatusCode;
            dynamic jsonObject = JObject.Parse(response.Content);
            int status = (int)jsonObject.IsSuccess;
            Assert.Equal(HttpStatusCode.OK, statusCode);

            //var message = response.Content;
            Assert.Equal("Deneme", jsonObject.data.name);
        }

    }
}
