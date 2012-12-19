using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Web;

namespace DataAccess.Class
{
    [DataContract]
    public class UserRequest
    {
        [DataMember]
        public string UserLastName { get; set; }
        [DataMember]
        public string UserFirstName { get; set; }
        [DataMember]
        public string UserName { get; set; }
    }
}