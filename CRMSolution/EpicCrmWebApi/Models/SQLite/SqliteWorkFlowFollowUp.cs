﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EpicCrmWebApi
{
    public class SqliteWorkFlowFollowUp
    {
        public string Phase { get; set; }
        public DateTime StartDate { get; set; }
        public DateTime EndDate { get; set; }
        public string Notes { get; set; }
    }
}