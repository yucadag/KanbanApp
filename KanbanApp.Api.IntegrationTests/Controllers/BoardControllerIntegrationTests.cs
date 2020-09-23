using KanbanApp.Api.IntegrationTests.Helpers;
using Microsoft.AspNetCore.TestHost;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Testing;
using Microsoft.AspNetCore.TestHost;

using System;
using System.Net;
using System.Net.Http;
using System.Threading.Tasks;
using Xunit;
using System.Net.Http.Json;
using System.Collections.Generic;
using KanbanApp.Api.Models.Boards.Input;
using KanbanApp.Api.IntegrationTests.Helpers.Serialization;
using KanbanApp.Services.DTO.Core;
using KanbanApp.Services.UseCases.Boards.CreateBoard;
using Shouldly;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

namespace KanbanApp.Api.IntegrationTests.Controllers
{
    public class BoardControllerIntegrationTests : IClassFixture<TestingWebAppFactory<Startup>>
    {
        private readonly HttpClient _client;

        private readonly TestingWebAppFactory<Startup> _factory;

        public BoardControllerIntegrationTests(TestingWebAppFactory<Startup> factory)
        {
            factory.ClientOptions.BaseAddress = new Uri("https://localhost:5002/api/");

            _client = factory.CreateClient();
            _factory = factory;
        }

        //[Theory]
        //[MemberData(nameof(GetInvalidInputs))]
        [Fact]
        public async Task Post_WithoutName_ReturnsBadRequest()
        {
            BoardAddInput boardAddInputModel = new BoardAddInput
            {
                BoardId = "247234",
                Name = "BoardTest",
                Description = "Açýklama",
                OwnerId ="MYUCADAG"
            };
            var response = await _client.PostAsJsonAsync("Board/Add", boardAddInputModel, JsonSerializerHelper.DefaultSerialisationOptions);

            string Content = await response.Content.ReadAsStringAsync();
            dynamic json = JsonConvert.DeserializeObject(Content);

            //.ReadFromJsonAsync<ActionResult<ServiceResult<CreateBoardCommandResult>>>();
            //  var problemDetails = await response.Content.ReadFromJsonAsync<ActionResult<ServiceResult<CreateBoardCommandResult>>>();

            //.ReadAsStringAsync();
            //<ActionResult<ServiceResult<CreateBoardCommandResult>>>();

            JObject googleSearch = JObject.Parse(Content);
            JToken Result = googleSearch["result"]["resultObject"]["data"];
            CreateBoardCommandResultItem ReulstObject = Result.ToObject<CreateBoardCommandResultItem>();
            // get JSON result objects into a list
            // IList<JToken> results = googleSearch["result"]["resultObject"].Children().ToList();

            // serialize JSON results into .NET objects
            //IList<SearchResult> searchResults = new List<SearchResult>();
            //foreach (JToken result in results)
            //{
            //    // JToken.ToObject is a helper method that uses JsonSerializer internally
            //    SearchResult searchResult = result.ToObject<SearchResult>();
            //    searchResults.Add(searchResult);
            //}

            response.StatusCode.ShouldBe(HttpStatusCode.BadRequest);
          
        }

        public static IEnumerable<object[]> GetInvalidInputs()
        {


            var testData = new List<BoardAddInput>
            {
                new BoardAddInput
                {
                    BoardId=null,
                    Name=string.Empty,
                    Description=string.Empty,
                    OwnerId=string.Empty
                },
                new BoardAddInput
                {
                    BoardId=null,
                    Name=string.Empty,
                    Description=string.Empty,
                    OwnerId=string.Empty
                }
               };
            yield return testData.ToArray();
        }
    }
}
