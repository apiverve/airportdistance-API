using System;
using System.Collections.Generic;
using System.Text;
using Newtonsoft.Json;

namespace APIVerve.API.AirportDistance
{
    /// <summary>
    /// Query options for the Airport Distance API
    /// </summary>
    public class AirportDistanceQueryOptions
    {
        /// <summary>
        /// The IATA code of the first airport (e.g. JFK)
        /// Example: JFK
        /// </summary>
        [JsonProperty("iata1")]
        public string Iata1 { get; set; }

        /// <summary>
        /// The IATA code of the second airport (e.g. LAX)
        /// Example: LAX
        /// </summary>
        [JsonProperty("iata2")]
        public string Iata2 { get; set; }
    }
}
