using Microsoft.AspNetCore.Authorization;
using System;

namespace StockGame
{
    [AttributeUsage(AttributeTargets.Method, AllowMultiple = false)]
    public class AuthorizePageHandlerAttribute : Attribute, IAuthorizeData
    {
        public AuthorizePageHandlerAttribute(string policy = null, string roles = null)
        {
            Policy = policy;
            Roles = roles;
        }

        public string Policy { get; set; }

        public string Roles { get; set; }

        public string AuthenticationSchemes { get; set; }
    }
}
